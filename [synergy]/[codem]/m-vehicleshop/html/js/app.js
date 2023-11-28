import showroomModule from './modules/showroom.js';
import managementModule from './modules/management.js';

const Modules = {
    showroom: showroomModule,
    management: managementModule
}

import showroomPage from '../pages/showroom/index.js';
import managementPage from '../pages/management/index.js';

const sleep = (ms) => new Promise(resolve => setTimeout(resolve, ms));

var resourceName = 'm-vehicleshop'

if (window.GetParentResourceName) {
    resourceName = window.GetParentResourceName()
}

window.postNUI = async (name, data) => {
    try {
        const response = await fetch(`https://${resourceName}/${name}`, {
            method: 'POST',
            mode: 'cors',
            cache: 'no-cache',
            credentials: 'same-origin',
            headers: {
                'Content-Type': 'application/json'
            },
            redirect: 'follow',
            referrerPolicy: 'no-referrer',
            body: JSON.stringify(data)
        });
        return !response.ok ? null : response.json();
    } catch (error) {
        // console.log(error)
    }
}

const store = Vuex.createStore({
    state: {
        activePage: false,
        modalActive: false,
        modalContent: {},
        modalPromise: null,

        player: {
            name: "Player",
            avatar: "",
            money: 0,
            permissions: [],
        },

        config: {
            previewColors: []
        },
        activeNotification: null,
        notificationStyle: {},
    },
    mutations: {},
    actions: {
        async showModal({ state }, modal) {
            state.modalActive = true;
            state.modalContent = modal;
            const promise = await new Promise((resolve, reject) => {
                state.modalPromise = { resolve, reject };
            });
            state.modalActive = false;
            state.modalContent = {};
            state.modalPromise = null;
            return promise
        },
        async notification({ state }, { text, type, duration }) {
            if (state.activeNotification) {
                state.activeNotification = null;
                await sleep(100);
            }
            state.activeNotification = text
            state.notificationStyle = {
                backgroundColor: type === 'error' ? '#ff0000' : 'rgba(148, 148, 148, 1)',
            }
            sleep(duration).then(() => {
                state.notificationStyle = {}
                state.activeNotification = null
            });
        }
    },
    modules: Modules
});

const app = Vue.createApp({
    components: {
        'showroom': showroomPage,
        'management': managementPage,
    },
    data: () => ({
    }),
    computed: {
        navbarIconStyle() {
        },
        ...Vuex.mapState({
            activePage: state => state.activePage,
            previewActive: state => state.showroom.previewActive,
            testDriveActive: state => state.showroom.testDriveActive,
            modalActive: state => state.modalActive,
            modalContent: state => state.modalContent,
            player: state => state.player,
            previewVehicle: state => state.showroom.previewVehicle,
            activeNotification: state => state.activeNotification,
            notificationStyle: state => state.notificationStyle,
            config: state => state.config,
        }),
        pageTitle() {
            if (this.activePage === "management") {
                return "PDM MANAGEMENT"
            }

            if (this.testDriveActive) {
                return "PDM TEST DRIVE"
            }

            if (this.previewActive) {
                return "PDM PREVIEW MODE"
            }

            return "PREMIUM DELUXE MOTOSPORT"
        }
    },

    watch: {
        activePage() {
            this.$nextTick(() => {
                this.updateNavbarActive();
            });
        }
    },

    mounted() {
        window.addEventListener('resize', this.updateNavbarActive);
        document.querySelector('#app').style.display = 'block';
        this.$nextTick(() => {
            this.updateNavbarActive();
        });

        window.addEventListener('message', (event) => {
            const data = event.data;
            const state = this.$store.state;
            if (data.action == 'openShowroom') {
                const gdata = data.data
                this.setActivePage(data.page);

                state.showroom.previewActive = false
                state.showroom.testDriveActive = false

                state.player = gdata.player;

                state.showroom.vehiclesList = gdata.shop.vehicles;
                state.showroom.navItems = gdata.shop.categories;
                state.management.employees = gdata.shop.employees;
                state.management.money = gdata.shop.money
                state.management.logs = gdata.shop.logs

                state.config = data.config;
            }

            if (data.action == 'close') {
                this.setActivePage(false);
            }

            if (data.action == 'update') {
                const gdata = data.data
                state.showroom.vehiclesList = gdata.vehicles;
                state.showroom.navItems = gdata.categories;
                state.management.employees = gdata.employees;
                state.management.money = gdata.money
                state.management.logs = gdata.logs
            }

            if (data.action == 'notification') {
                this.$store.dispatch('notification', data.data);
            }

            if (data.action == 'updateVehicleGameData') {
                state.showroom.gameData = data.data;
            }

            if (data.action == "startTestCountdown") {
                this.$store.dispatch('showroom/startCountdown', data.time);
            }

            if (data.action == "endTestCountdown") {
                this.$store.dispatch('showroom/endCountdown');
            }
        });

        window.addEventListener('keydown', (event) => {
            const state = this.$store.state;
            if (event.key == 'Escape') {
                if (state.activePage) {
                    postNUI('close');
                    return;
                }
            }
        });
    },

    beforeDestroy() {
        window.removeEventListener('resize', this.updateNavbarActive);
    },

    methods: {
        setActivePage(page) {
            this.$store.state.activePage = page;
        },
        async updateNavbarActive() {
            const activePageRef = await this.$refs[`navitem-${this.activePage}`]
            const navbarActiveRef = await this.$refs.navbarActive;
            if (!activePageRef || !navbarActiveRef) {
                return {
                    opacity: 0,
                    left: "50%"
                };
            };
            const pageRef = activePageRef[0];
            const pageRefCenter = pageRef.offsetLeft + pageRef.clientWidth / 2;
            navbarActiveRef.style.left = `${pageRefCenter - navbarActiveRef.clientWidth / 2}px`
        },
        modalButtonHandler(value) {
            const state = this.$store.state;
            if (state.modalPromise) {
                if (value) {
                    if (state.modalContent?.content == "input") {
                        return state.modalPromise.resolve(this.modalContent.input);
                    }
                    if (state.modalContent?.type == "new-vehicle") {
                        var vehicle = {}
                        for (const input of state.modalContent.fields) {
                            if (input.required && !input.value) {
                                return;
                            }
                            vehicle[input.name] = input.value;
                        }
                        return state.modalPromise.resolve(vehicle);
                    }

                    if (state.modalContent?.type == 'custom-plate') {
                        const plate = this.modalContent.input
                        return state.modalPromise.resolve(plate);
                    }
                }
                state.modalPromise.resolve(value);
            }
        },
        closeModal() {
            this.$store.state.modalActive = false;
            if (this.$store.state.modalPromise) {
                this.$store.state.modalPromise.resolve(false);
            }
        },
        findModalInput(name) {
            return this.modalContent.fields.find((input) => input.name == name);
        },
        formatPrice(price) {
            return new Intl.NumberFormat('en-US', {
                style: 'currency',
                currency: 'USD',
                minimumFractionDigits: 0,
            }).format(price);
        },
    },
});

app.use(store).mount('#app');