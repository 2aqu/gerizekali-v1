import importTemplate from '../../js/util/importTemplate.js';
import inlineSvg from '../../js/util/inlineSvg.js';

export default {
    template: await importTemplate('pages/showroom/index.html'),
    components: {
        'inline-svg': inlineSvg
    },
    data: () => ({
        selectedNav: null,
        searchActive: false,
        grabPos: { top: 0, left: 0, x: 0, y: 0 },
        selectedColor: 0,
        lastTurnPos: 0,
        searchInput: "",
        pendingVehicleLoad: false,
    }),
    methods: {
        formatPrice(price) {
            return new Intl.NumberFormat('en-US', {
                style: 'currency',
                currency: 'USD',
                minimumFractionDigits: 0,
            }).format(price);
        },
        selectNav(nav) {
            this.selectedNav = nav;
            this.$store.state.showroom.previewVehicle = null;

            postNUI("closePreview", nav.id);
            this.updateNav();
        },
        selectColor(index) {
            this.selectedColor = index;
            postNUI("selectColor", { color: index });
        },
        async selectVehicle(vehicle) {
            if (!this.selectedNav?.id || this.pendingVehicleLoad) return;
            if (this.selectedNav.id != vehicle.category) {
                const nav = this.navItems.find((nav) => nav.id == vehicle.category);
                this.selectNav(nav);
            }
            this.$store.state.showroom.previewVehicle = vehicle;
            this.pendingVehicleLoad = true
            const curVeh = this.$refs[`vehicle-item-${vehicle.id}`]
            if (curVeh && curVeh[0]) {
                curVeh[0].scrollIntoView({
                    behavior: "smooth",
                    inline: "center"
                })
            }
            await postNUI("previewVehicle", {
                id: vehicle.id,
                category: vehicle.category,
            });
            this.pendingVehicleLoad = false
            postNUI("selectColor", { color: this.selectedColor });
        },
        async testDriveAction() {
            this.$store.state.showroom.testDriveActive = !this.$store.state.showroom.testDriveActive;
            this.$store.state.showroom.previewActive = false;

            const finished = await postNUI("startTestDrive", {
                category: this.previewVehicle.category,
                id: this.previewVehicle.id,
                color: this.selectedColor,
            });
            postNUI("selectColor", { color: this.selectedColor });
            this.$store.state.showroom.testDriveActive = false;
        },
        previewAction() {
            this.$store.state.showroom.previewActive = !this.$store.state.showroom.previewActive;
            this.$store.state.showroom.testDriveActive = false;
        },
        updateNav() {
            this.$nextTick(() => {
                const nav = this.$refs.navActive;
                const navItems = this.$refs.navItems;
                const currentNav = this.searchActive ? this.$refs.searchBtn : navItems && navItems.querySelector('.active');
                if (!currentNav) return;
                const currentNavWidth = currentNav.offsetWidth;
                const currentNavLeft = currentNav.offsetLeft;

                nav.style.width = `${currentNavWidth}px`;
                nav.style.left = `${currentNavLeft - 1}px`;
            });
        },
        vehiclesListMove(e) {
            if (!e.which) return;
            const dx = e.clientX - this.grabPos.x;
            const dy = e.clientY - this.grabPos.y;

            this.$refs.vehiclesList[0].scrollTop = this.grabPos.top - dy;
            this.$refs.vehiclesList[0].scrollLeft = this.grabPos.left - dx;
            this.$refs.vehiclesList[0].style.cursor = 'grabbing';
        },
        vehiclesListDown(e) {
            this.grabPos = {
                top: this.$refs.vehiclesList[0].scrollTop,
                left: this.$refs.vehiclesList[0].scrollLeft,
                x: e.clientX,
                y: e.clientY,
            };
        },
        vehiclesListUp() {
            if (!this.$refs?.vehiclesList[0]) return;
            this.$refs.vehiclesList[0].style.cursor = '';

            this.grabPos = { top: 0, left: 0, x: 0, y: 0 };
        },
        vehiclesListWheel(e) {
            if (e.shiftKey) {
                return
            }
            this.$refs.vehiclesList[0].scrollLeft += e.deltaY / 1.7;
        },
        buyAction() {
            this.$store.dispatch('showModal', {
                title: "Araç Satın Al",
                content: 'text',
                text: 'Bu aracı satın almak istediğinizden emin misini ?',
                type: 'buy-vehicle',
                buttons: [
                    {
                        text: "Satın Al",
                        class: "green",
                        value: true
                    },
                    {
                        text: "İptal Et",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result) => {
                if (!result) return;

                postNUI("buyVehicle", {
                    category: this.previewVehicle.category,
                    id: this.previewVehicle.id,
                    color: this.selectedColor,
                    plate: result,
                });
            });
        },
        FormatSpecVal(val) {
            if (!val || isNaN(val)) return 0;
            val > 100 ? val = 100 : val = val.toFixed(2);
            return `${val}/100`;
        },
        turnVehicle(event) {
            if (!event.which) return;
            const dx = event.clientX / 2 - this.lastTurnPos;
            this.lastTurnPos = event.clientX / 2;
            postNUI("turnPreviewVehicle", {
                direction: dx
            });
        },
        onBrandLogoError(event) {
            event.target.src = './assets/brand-form-placeholder.png';
        },
        onVehicleImageError(event) {
            event.target.src = './assets/vehicle-form-placeholder.png';
        }
    },
    watch: {
        selectedNav() {
            this.updateNav();
        },
        searchActive() {
            this.updateNav();
            this.searchInput = ""
        }
    },
    mounted() {
        this.updateNav();
        if (this.navItems?.length > 0) {
            this.selectNav(this.navItems[0]);
        }
        const firstColor = Object.keys(this.colors)[0];
        this.selectColor(firstColor);
        window.addEventListener('resize', this.updateNav);
    },

    beforeDestroy() {
        window.removeEventListener('resize', this.updateNav);
    },

    computed: {
        ...Vuex.mapState({
            vehicles: state => state.showroom.vehiclesList,
            testDriveActive: state => state.showroom.testDriveActive,
            previewActive: state => state.showroom.previewActive,
            navItems: state => state.showroom.navItems,
            previewVehicle: state => state.showroom.previewVehicle,
            colors: state => state.config.previewColors,
            vehicleDescriptions: state => state.config.classDescriptions,
            gameData: state => state.showroom.gameData,
            specNames: state => state.config.specNames,
            player: state => state.player,
            showingCountdown: state => state.showroom.showingCountdown
        }),
        previewingVehicle() {
            if (!this.selectedNav || !this.previewVehicle) return null;
            return this.vehicles[this.selectedNav.id].find((v) => v.id === this.previewVehicle.id);
        },
        filteredVehicles() {
            // return this.vehicles[this.selectedNav.id].filter((veh) =>{
            //     return veh.name.toLowerCase().includes(this.searchInput.toLowerCase()) || veh.brand.toLowerCase().includes(this.searchInput.toLowerCase())
            // })

            var retval = []
            for (const category in this.vehicles) {
                var vehicles = this.vehicles[category]
                retval = [...vehicles, ...retval]
            }
            return retval.filter((veh) => {
                return veh.name.toLowerCase().includes(this.searchInput.toLowerCase()) || veh.brand.toLowerCase().includes(this.searchInput.toLowerCase())
            })
        }
    }
}