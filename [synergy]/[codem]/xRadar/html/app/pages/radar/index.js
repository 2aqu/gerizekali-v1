import importTemplate from "../../utils/importTemplate.js";
import inlinesvg from "../../utils/inlinesvg.js";

export default {
    data() {
        return {
            patrolSpeed: 0,
            frontRadarSpeed: 0,
            frontRadarPlate: "",
            rearRadarSpeed: 0,
            rearRadarPlate: "",
            location: {
                street: "undefined",
                heading: "N"
            },
            fwdMode: 'same',
            bwdMode: 'same',
            frontSpeedWarning: false,
            rearSpeedWarning: false,
            frontAllowRadarSpeed: "",
            frontLockedSpeed: false,
            rearLockedSpeed: false,
            lockedFrontVehicle: false,
            lockedRearVehicle: false,
            showFastActions: false,
            radarPower: true,
            keys: [],
            frontXMIT: true,
            rearXMIT: true,

        };
    },
    components: {
        inlinesvg
    },
    computed: {
        ...Vuex.mapState({
            Locales: state => state.Locales,
            isTabletActive: state => state.isTabletActive,
            radarPosition: state => state.radarPosition,
            radarFastActionsPosition: state => state.radarFastActionsPosition,
            radarScale : state => state.radarScale,
        }),
        getRadarStyle() {
            let scale = this.radarScale
            if (this.radarPosition.left && this.radarPosition.top) {

                return {
                    left: this.radarPosition.left + 'px',
                    top: this.radarPosition.top + 'px',
                    transform : `scale(${scale})`
                }
            }

            return {
                right: "2rem",
                bottom: "0.5rem",
                transform : `scale(${scale})`

            }
        },
        getRadarFastActionsStyle() {
            if (this.radarFastActionsPosition.left && this.radarFastActionsPosition.top) {

                return {
                    left: this.radarFastActionsPosition.left + 'px',
                    top: this.radarFastActionsPosition.top + 'px',

                }
            }

            return {
                right: "2rem",
                bottom: "25rem",


            }
        },
    },
    methods: {
        ...Vuex.mapMutations({

            setElementPosition: 'setElementPosition',
        }),
        PlaySound() {
            let audio = new Audio(`./assets/btn.ogg`);
            audio.play();
            audio.volume = 0.2;
        },
        setShowFastActions(payload) {
            this.showFastActions = payload
        },
        radarAction(type, payload) {
            postNUI("radarAction", {
                type,
                payload
            });
        },
        messageHandler(event) {
            switch (event.data.action) {
                case "SET_FRONT_RADAR_SPEED":
                    this.frontRadarSpeed = event.data.payload.toFixed(0);
                    break;
                case "ADD_KEY":
                    this.keys.push(event.data.payload)
                    break
                case "CLEAR_KEYS":
                    this.keys = []
                    break
                case "TOGGLE_FAST_ACTIONS":
                    this.setShowFastActions(event.data.payload)
                    break
                case "SET_PATROL_SPEED":
                    this.patrolSpeed = event.data.payload.toFixed(0);
                    break;
                case "SET_FRONT_RADAR_PLATE":
                    this.frontRadarPlate = event.data.payload;
                    break;
                case "SET_REAR_RADAR_PLATE":
                    this.rearRadarPlate = event.data.payload;
                    break;
                case "SET_REAR_RADAR_SPEED":
                    this.rearRadarSpeed = event.data.payload.toFixed(0);
                    break;
                case "SET_LOCATION":
                    this.location.street = event.data.payload.street;
                    this.location.heading = event.data.payload.heading;
                    break;

                case "FORCE_UPDATE":
                    this.fwdMode = event.data.payload.fwdMode
                    this.bwdMode = event.data.payload.bwdMode
                    this.frontSpeedWarning = event.data.payload.frontSpeedWarning
                    this.rearSpeedWarning = event.data.payload.rearSpeedWarning
                    this.frontLockedSpeed = event.data.payload.frontLockedSpeed
                    this.rearLockedSpeed = event.data.payload.rearLockedSpeed
                    this.lockedFrontVehicle = event.data.payload.lockedFrontVehicle
                    this.lockedRearVehicle = event.data.payload.lockedRearVehicle
                    this.radarPower = event.data.payload.radarPower
                    this.frontXMIT = event.data.payload.frontXMIT
                    this.rearXMIT = event.data.payload.rearXMIT
                    break

                default:
                    break;
            }
        },
        FormatSpeed(speed) {
            if (!speed) {
                speed = 0
            }
            if (!isNaN(speed)) {
                speed = speed.toString()
            }
            if (speed.length == 1) {
                if (speed == 10) {
                }
                return `00<span>${speed[0]}</span>`;
            }
            if (speed.length == 2) {
                if (speed == 10) {
                }
                return `0<span>${speed[0]}</span><span>${speed[1]}</span>`;
            }
            if (speed.length == 3) {
                if (speed == 10) {
                }
                return `<span>${speed[0]}</span><span>${speed[1]}</span><span>${speed[2]}</span>`;
            }

            return "000";
        },
        updateFromRadarSpeedValue(val) {
            if (val > 0 && val <= 300) {
                this.frontAllowRadarSpeed = val;
            } else {
                this.frontAllowRadarSpeed = "";
            }
        },
        draggableElement(classname, type) {
            if (!$(classname).data('ui-draggable')) {
                $(classname).draggable({
                    helper: "clone",
                    revertDuration: 0,
                    revert: false,
                    containment: "body",
                    scroll: false,
                    containment: "body",
                    start: (event, ui) => {
                        this.PlaySound()
                    },
                    drag: function (event, ui) {
    
                    },
                    stop: (event, ui) => {
                        let left = ui.position.left;
                        let top = ui.position.top;
    
                        this.setElementPosition({
                            type,
                            value: {
                                left,
                                top,
                            },
                        })
                        this.PlaySound()
    
    
                    }
                });
            }
         
        }
    },
    mounted() {
        window.addEventListener("message", this.messageHandler);
        if (this.isTabletActive) {
            if (this.showFastActions) {
                
                this.draggableElement('.radar-fast-actions', 'radarFastActionsPosition')
            }
            this.draggableElement('.radar', 'radarPosition')
        }

    },
    beforeDestroy() {
        window.removeEventListener("message", this.messageHandler);
    },
    watch: {
        frontRadarSpeedValue(val) {
            if (val > 0 && val <= 300) {
                this.frontAllowRadarSpeed = val;
            }
        },
        isTabletActive(val) {
            if (val) {
                if (this.showFastActions) {
                    this.draggableElement('.radar-fast-actions', 'radarFastActionsPosition')
                }
                this.draggableElement('.radar', 'radarPosition')
            }else{
                if ($('.radar-fast-actions').data('ui-draggable')) {
                    $('.radar-fast-actions').draggable('destroy');
                }
                if ($('.radar').data('ui-draggable')) {
                    $('.radar').draggable('destroy');            
                }
            }
        },
        showFastActions(val){
            if (val && this.isTabletActive) {
                this.draggableElement('.radar-fast-actions', 'radarFastActionsPosition')
            }else{
                if ($('.radar-fast-actions').data('ui-draggable')) {
                    $('.radar-fast-actions').draggable('destroy');
                }
            }
        }
    },
    template: await importTemplate("./app/pages/radar/index.html")
};
