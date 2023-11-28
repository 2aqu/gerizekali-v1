const OnNuiMessage = () => {
    window.addEventListener('message', (event) => {
        const data = event.data
        const action = data.action
        const payload = data.payload
        const payload2 = data.payload2
        const value = data.value
        const value2 = data.value2
        switch (action) {
            case "CHECK_NUI_READY":
                $.post(`https://${payload}/nuiReady`)
                app.SetResourceName(payload)
            break
            case "SET_VISIBILITY":
                app.SetMenuVisibility(payload)
                app.SetDate()
            break
            case "HEADERS":
                app.SetHeaders(value)
            break
            case "UPDATE_PLAYER_NAME":
                app.UpdatePlayerName(payload)
            break
            case "UPDATE_AVATAR":
                app.UpdateAvatar(payload)
            break
            case "SET_CHARGES":
                app.SetCharges(payload)
            break
            case "SET_INCIDENTS":
                app.SetIncidents(payload)
            break
            case "SET_GRADE":
                app.SetGrade(payload, value, value2)
            break
            case "ALL_VEHICLES":
                app.SetAllVehicles(payload)
            break
            case "LOCALE":
                app.getLocales(value)
                break;
            case "DisplayPage":
                app.getDisplayePage(value, payload)
            break;
            case "SEND_CALL":
                app.SendCall(payload)
            break;
            case "REMOVE_CALL":
                app.RemoveCalls(payload)
            break;
            case "SET_ACCESS":
                app.SetAccess(value,payload,payload2)
            break;
            case "SET_CAMS":
                app.SetCams(value)
            break;
            case "Location":
                app.SetLocation(payload)
            break;
            case "UPDATE_CHAT_MESSAGES":
                app.UpdateChatMessages(payload)
            break
            case "ADD_CHAT_MESSAGES":
                app.AddChatMessage(payload,value)
            break;
            case "UPDATE_POLICES":
                app.UpdatePolices(payload)
            break
            case 'OPEN_CAM':
                app.OpenCam(payload,value)
            break;
            case 'ALL_USERS':
                app.TotalUsers(payload)
            break;
            case 'SET_EVIDENCES':
                app.SetEvidences(payload)
            break;
            case 'SET_PROFILES':
                app.SetProfiles(payload)
            break;
            case 'SET_WARRANTS':
                app.SetWarrants(payload)
            break;
            case 'CLOSE_CAM':
                app.CloseCam()
            break;
            case "SET_AVAILABLE_LICENSES":
                app.SetAvailableLicenses(payload, value)
            break;
            case "SET_PLAYER_LICENSES":
                app.SetPlayerLicenses(payload)
            break;
            case "SET_LICENSE_TYPES":
                app.SetLicenseTypes(payload)
            break;
            case "SET_HOUSES":
                app.SetHouses(payload)
            break;
            case "SET_LIVE_MAP_COORDS":
                if (app.currentPage == 'livemap' && app.map) {
                    app.SetLiveMapCoords(payload)
                }else {
                    return
                }
            break;
            case "SET_PHONE_NUMBERS":
                app.setNumbers(payload)
            break;
        }
    })
}

styleAtlas	= L.tileLayer('./assets/mapStyles/styleAtlas/{z}/{x}/{y}.jpg', {minZoom: 2,maxZoom: 5,noWrap: true,continuousWorld: false,attribution: false,id: 'styleAtlas map',});
const center_x = 117.3;
const center_y = 172.8;
const scale_x = 0.02072;
const scale_y = 0.0205;

const maxZoom = 5;

CUSTOM_CRS = L.extend({}, L.CRS.Simple, {
    projection: L.Projection.LonLat,
    scale: function(zoom) {

        return Math.pow(2, zoom);
    },
    zoom: function(sc) {

        return Math.log(sc) / 0.6931471805599453;
    },
    distance: function(pos1, pos2) {
        var x_difference = pos2.lng - pos1.lng;
        var y_difference = pos2.lat - pos1.lat;
        return Math.sqrt(x_difference * x_difference + y_difference * y_difference);
    },
    transformation: new L.Transformation(scale_x, center_x, -scale_y, center_y),
    infinite: true
});

const app = new Vue({
    el: '#app',
    data: {
        resourceName: 'efearob-gelv',
        currentPage: 'dashboard',
        show: false,
        avatar: './assets/userphoto.png',
        playerData: {
            grade: 0,
            name: '',
            job : '',
            gradeName: '',
        },
        searchvehicle: '',
        allvehicles: '',
        evidencename: '',
        evidencedesc: '',
        access: {},
        locales: {},
        displayPage: {},
        vehicleownername: '',
        cams: {},
        polices: {},
        cam: false,
        date: '',
        gametime: '', 
        camname: '',
        totalcalls: 0,
        involvedbox: '',
        charges: '',
        reason: '',
        amount: '',
        location: '',
        reviewplate: '',
        reviewcarname: '',
        reviewcarlogo : '',
        reviewCarGallery: [],
        gpscodemain: '',
        reviewowner: '',
        reviewcategory: '',
        month: '',
        incidentname: '',
        incidentdescription: '',
        day: '',
        year: '',
        input2: false,
        dayLabel: '',
        chatMessage: '',
        clickDeleteCharges: false,
        Access: '',
        totalpolice: 0,
        styleB: false,
        chatMessages: [],
        searchuser: '',
        allwarrants: '',
        allusers: '',
        inputCharges: false,
        warrantype: 'search',
        search : '',
        selectedCategoryId: null,
        selectedChagresIndex: null,
        selectedChagresIndexAdd: null,
        name: '',
        imageSrc: './assets/map.png',
        isHovered: false,
        surname: '',
        Houses: '',
        theme: 'dark',
        input4:  false,
        birthdate: '',
        profession: '',
        headerLoc: '',
        warrantname: '',
        url: '',
        identifier: '',
        input: false,
        inputtext: '',
        inputloc: '',
        evidences: '',
        createCahgres: {
            reason: '',
            money: '',
            communityservice: '',
            jailtime: '',
        },
        incidents: '',
        searchevidence: '',
        searchwarrant: '',
        reviewHouses: {
            name: '',
            playerName : '',
        },
        isPlayerHovered: false,
        reviewcolor: 'Unknown',
        inputpolice: false,
        inputpolice2: false,
        galleryHovered: '',
        galleryVehicleHovered: '',
        galleryIncidentVehicleHovered: '',
        camsHovered: '',
        sendChatMessageTimeout: null,
        searchcharges : '',
        searchcharges2 : '',
        sendChatMessageDelay: 1000,
        incidentinvolved: [],
        incidentevidences: [],
        incidentcops: [],
        incidentvehicles: [],
        HouseGroup : null,
        incidentfines: [],
        addressline: '',
        calls: [],
        inputfines: false,
        sendChatMessageCounter: null,
        inputLicenses: false,
        evidenceinvolved: [],
        warrantreason: '',
        selectedChargedAddData: '',
        categoryname: '',
        profilegallery: [],
        photoIndex: null,
        input3: false,
        selectedImageIndex: null,
        locationInput: '',
        isReadOnlyIncident: true,
        isImageVisible: false,
        inputevidences: false,
        allprofiles: [],
        warrantinvolved: [],
        warrantcopsinvolved: [],
        warrantvehiclesinvolved: [],
        availableLicenses:'',
        galleryinput: '',
        information: '',
        inputvehicles: false,
        images: [],
        searchincident: '',
        blur: null,
        headers: '',
        tempid: '',
        previewPhoto: false,
        searchHouse: '',
        isTransparent: false,
        allLicenses: [],
        gpscode: '',
        playerNumbers: '',
        licenseTypes: 'default',
        isReadOnly: true ,
        createCategory: false,
        mdtTransparent: false,
        liveMapPolices: '',
        map: null,
        CallGroups: null,
        callsLiveMap: [],
        reviewPlayerOpened: false,
        contextMenuVisible: false,
        selectedCategoryData : '',
        selectedItem: null,
        selectedItemIndex: null,
        selectedCrateCategoryId: 1,
        contextMenuTop: 0,
        contextMenuLeft: 0,
        settedStatus: false,
        firstStart: false,
        profile: {
            gallery: [],
            information: '',
            licenses: [],
            playerImage: '',
        },
        incident: {
            index: '',
            name: '',
            desc: '',
            involved: [],
            cops: [],
            vehicles: [],
            evidences: [],
            fines: [],
            time: ''
        },
        warrant: {
            index: 0,
            name: '',
            reason: '',
            adress:'',
            created: '',
            involved: [],
            type: '',
        },
        evidence: {
            id: 1,
            index: 0,
            time: '',
            involved: [],
            images: [],
            name: '',
            desc: '',
        },
        liveMap: {
            hidestatus: {
                calls: true,
                polices: true,
                houses: true,
            },
        },
    },

    methods: {
        SetResourceName(val) {
            this.resourceName = val
        },

        liveMapBuild() {
            if (this.map) {
                this.map.off();
                this.map.remove();
            }
        
            this.map = L.map('map', {
                crs: CUSTOM_CRS,
                minZoom: 2.5,
                doubleClickZoom: false,
                maxZoom: maxZoom,
                zoom: 1,
                maxNativeZoom: maxZoom,
                preferCanvas: true,
                layers: [styleAtlas],
                center: [0, 0],
                backgroundColor: 'blue',
            });
        
            this.map.zoomControl.setPosition('bottomleft');
            this.map.attributionControl.setPrefix(false);
        
            this.map.invalidateSize();
        
            this.map.on('dblclick', (e) => {
                const {lng: x, lat: y} = e.latlng;
                $.post(`https://${app.resourceName}/setWayPointLive`, JSON.stringify({x, y}));
            });
        },

        goOnMap(x, y) {
            if(this.currentPage != 'livemap' && !this.map) {
                this.currentPage = 'livemap'
                setTimeout(() => {
                    this.restartLiveMap()
                }, 50);
                const Interval = setInterval(() => {
                    if (this.map) {
                        clearInterval(Interval)
                        this.map.invalidateSize();
                        this.map.panTo([y, x], {
                            animate: true,
                            duration: 0.5, 
                        }); 
                    }
                }, 1000);
            }else {
                this.map.panTo([y, x], {
                    animate: true,
                    duration: 0.5, 
                }); 
            }
        },

        setLiveMapHideStatus(val) {
            let group;
            this.settedStatus = true
            if (val === 'calls') {
                group = this.CallGroups;
            } else if (val === 'polices') {
                group = this.policeGroup;
            } else if (val === 'houses') {
                group = this.HouseGroup;
            }
            if (!group) return;
            
            if (!this.liveMap.hidestatus[val]) {
                this.liveMap.hidestatus[val] = false;
                group.addTo(this.map);
            } else {
                this.liveMap.hidestatus[val] = true;
                group.remove();
            }
        },

        SetCurrentPage(val) {
            this.currentPage = val
            this.incident.desc = ''
            this.warrant.reason = ''
            this.evidence.name = ''
            this.reviewPlayerOpened = false
            $("#map").html("")
            if (this.map) {
                this.map.off();
                this.map.remove();
                this.map = null
            }
            if (val == 'charges') {
                const element = document.querySelector(".category-list");
                element.addEventListener('wheel', (event) => {
                    event.preventDefault();
                    element.scrollBy({
                        left: event.deltaY < 0 ? -30 : 30,
         
                    });
                });
            }else if (val == 'livemap') {
                setTimeout(() => {
                    this.restartLiveMap()
                }, 50)
            }
        },

        selectCategory(categoryId) {
            this.selectedCategoryId = categoryId;
            this.selectedChagresIndex = null
            const findChargesFromId = this.charges.find((charges) => {
                return charges.id === categoryId;
            });
            this.selectedCategoryData = JSON.parse(findChargesFromId.data);
        },

        UpdatePlayerName(name) {
            this.playerData.name = name
        },

        showInputCharges () {
            this.inputCharges = true
            this.blur = 'blur(2px)';
            postData(`https://${this.resourceName}/SetBlur` , {
                toggle: true,
            })
            this.categoryname = ''
            if (this.selectedCategoryId) {
                this.selectedCrateCategoryId = this.selectedCategoryId
            }
        },

        createChargesCategory() {
            this.inputCharges = false
            this.createCategory = true
        },

        selectCreateCategory(val) {
            this.selectedCrateCategoryId = val
        },

        enableEdit(val) {
            this.isReadOnly = false; 
            if (val == 'incident') {
                this.isReadOnlyIncident = false
            }
        },
        
        saveEdit(val) {
            if (val == 'incident') {
                this.isReadOnlyIncident = true
                this.UpdateIncidents()
            }else if (val == 'evidence') {
                this.updateEvidence()
            }else {
                this.isReadOnly = true;
                this.SaveProfile()
            }
  
        },

        updateEvidence() {
            const date = new Date();
            let time = date.toLocaleString().split(',').join('');
            if(this.evidence.name != "" ) {
                postData(`https://${this.resourceName}/createevidence`, {
                    id: this.evidence.id,
                    name: this.evidence.name,
                    desc: this.evidence.desc,
                    involved: this.evidence.involved,
                    images: this.evidence.images,
                    time: this.evidence.time,
                })
            }
        },

        UpdateIncidents(){
            const dateincident = new Date();
            let timeincident = dateincident.toLocaleString().split(',').join('');
            if(this.incident.name != "" ) {
                postData(`https://${this.resourceName}/createincident`, {
                    id: this.incident.id,
                    name: this.incident.name,
                    desc: this.incident.desc,
                    involved: this.incident.involved,
                    cops: this.incident.cops,
                    vehicles: this.incident.vehicles,
                    evidences: this.incident.evidences,
                    fines: this.incident.fines,
                    time: timeincident,
                })
            }
        },

        addChargesCategory() {
            this.blur = null
            postData(`https://${this.resourceName}/SetBlur` , {
                toggle: false,
            })
            this.createCategory = false
            if(this.categoryname != "") {
                postData(`https://${this.resourceName}/createcategory`, {
                    name: this.categoryname,
                })
                this.categoryname = ''
            }
        },

        UpdateAvatar(val) {
            if(val == undefined) {
                this.avatar = './assets/userphoto.png'
            }else {
                this.avatar = val
            }
        },

        SetLicenseTypes(val) {
            this.licenseTypes = val
        },

        SetIncidents (val) {
            this.incidents = val
        },

        SetPlayerLicenses(val) {
            this.allLicenses = val
        },

        SetMenuVisibility(val) {
            this.show = val
            this.theme = localStorage.getItem("theme")
            this.reviewPlayerOpened = false
            if(this.theme) {
                if (this.theme == 'light') {
                    document.documentElement.classList.add('light-mode')
                }else {
                    document.documentElement.classList.remove('light-mode')
                }
            }else {
                this.theme = 'dark'
            }

            if (!this.firstStart) {

                if (this.displayPage['DASHBOARD'] == true && this.access['DASHBOARD'] == undefined || this.access['DASHBOARD'] != undefined && this.playerData.grade >= this.access['DASHBOARD']) {
                    this.currentPage = 'dashboard';
                }else if (this.currentPage == 'dashboard') {
                    for (const [key, value] of Object.entries(this.displayPage)) {
                        if (value == true) {
                            this.currentPage = key.toLowerCase();
                            break;
                        }
                    }
                }
                this.firstStart = true
            }

        },

        getDisplayePage(val,val2) {
            this.displayPage = val;
            this.mdtTransparent = val2
        },

        SetAvailableLicenses(val,val2) {
            this.availableLicenses = val
        },

        getAvailableLicensesFromType(val) {
            for (let i = 0; i < this.availableLicenses.length; i++) {
                const license = this.availableLicenses[i];
                if (license.type === val) {
                    return license.label;
                }
            }
        },
        
        getLocales(val) {
            this.locales = val
        },

        SetGrade(val,job,val2) {
            this.playerData.grade = val
            this.playerData.job = job
            this.playerData.gradeName = val2
        },

        addLicenses(data) {
            this.profile.licenses.push(data);
            this.SaveProfile()
        },

        deleteLicense(val) {
            const index = this.profile.licenses.indexOf(val);
            if (index !== -1) {
                this.profile.licenses.splice(index, 1);
            }
            this.SaveProfile();
        },

        viewCharges(val,val2,val3) {
            if(val == this.selectedChagresIndex) {
                this.selectedChagresIndex = null
            }else {
                this.selectedChagresIndex = val
            }
        },

        viewCharg(val) {
            if(val == this.selectedChagresIndex) {
                this.selectedChagresIndex = null
            }else {
                this.selectedChagresIndex = val
            }
        },

        viewChargesAdd(val,val2,val3) {
            if (JSON.parse(this.charges[val].data).length == 0) {
                return
            }
            if(val == this.selectedChagresIndexAdd) {
                this.selectedChagresIndexAdd = null
                this.selectedChargedAddData = ''
            }else {
                this.selectedChagresIndexAdd = val
                this.selectedChargedAddData = JSON.parse(this.charges[val].data)
            }
        },

        RemoveCalls(val) {
            this.calls.splice(val,1)
            this.totalcalls = this.calls.length
            this.liveMapLoadCallsBlips();
        },

        CurrentLicenses() {
            if (this.licenseTypes === 'default' || this.licenseTypes === null) {
                return this.profile.licenses;
            }
            if (this.identifier) {
                const newLicenses = this.allLicenses.filter((license) => {
                return license.owner.toLowerCase().includes(this.identifier.toLowerCase());
            });
   
            this.profile.licenses = newLicenses.map((license) => license.type);

            return this.profile.licenses;
            
            } else {
                return false;
            }
        },

        SetHeaders(val) {
            this.headers = val
        },

        SetCharges(val) {
            this.charges = val
            if (this.selectedCategoryId === null) {
                if (this.charges.length > 0) {
                    const findChargesFromId = this.charges.reduce((minCharge, currentCharge) => {
                        if (currentCharge.id < minCharge.id) {
                            this.selectedCategoryId = currentCharge.id
                            return currentCharge;
                        }
    
                        this.selectedCategoryId = minCharge.id
                        return minCharge;
                    });
                    this.selectedCategoryId = findChargesFromId.id;
                    this.selectedCategoryData = JSON.parse(findChargesFromId.data);
                }
            }
        },
          
        ChargesCreate() {
            if(this.createCahgres.reason != "" && this.selectedCrateCategoryId)
            {
                this.inputCharges = false
                this.blur = null

                postData(`https://${this.resourceName}/SetBlur` , {
                    toggle: false,
                })
                
                const findChargesFromId = this.charges.find((charges) => {
                    return charges.id === this.selectedCrateCategoryId;
                });

                data = JSON.parse(findChargesFromId.data)
                const addedData = [{reason: this.createCahgres.reason, money: this.createCahgres.money, communityservice: this.createCahgres.communityservice, jailtime: this.createCahgres.jailtime}]
                data.push({
                    reason: this.createCahgres.reason,
                    money: this.createCahgres.money,
                    communityservice: this.createCahgres.communityservice,
                    jailtime: this.createCahgres.jailtime,
                })

                if(this.selectedCrateCategoryId === this.selectedCategoryId ) {
                    this.selectedCategoryData = data
                }
                
                postData(`https://${this.resourceName}/CreateCharges`, {
                    categoryId: this.selectedCrateCategoryId,
                    array: data,
                    newData: addedData,
                })

                this.createCahgres.reason = ''
                this.createCahgres.money = ''
                this.createCahgres.communityservice = ''
                this.createCahgres.jailtime = ''

            }
        },

        DeleteCharges(index) {
            const deletedData = [this.selectedCategoryData[index]];
            this.selectedCategoryData.splice(index, 1);
            postData(`https://${this.resourceName}/DeleteCharges`, {
                categoryId: this.selectedCategoryId,
                array: this.selectedCategoryData,
                oldData: deletedData,
            });
        },

        SetLiveMapCoords(val) {
            this.liveMapPolices = val
            this.loadPolicesBlips(val)
        },

        loadPolicesBlips(val) {
            if(this.liveMap.hidestatus['polices'] && this.settedStatus) {
                return
            }

            if (!this.policeGroup) {
                this.policeGroup = L.layerGroup().addTo(this.map);
            } else {
                this.policeGroup.clearLayers();
            }
  
            function customIcon(iconUrl) {
                return L.icon({
                    iconUrl: iconUrl,
                    iconSize: [14, 14],
                    iconAnchor: [10, 10],
                    popupAnchor: [0, -10],
                });
            }
            
            for (let i = 0; i < val.length; i++) {
                const coords = val[i].location;
                const job = val[i].job;
                const source = val[i].source;
                const name = val[i].name;
                let iconUrl = val[i].iconUrl;
  
                if (job == 'police') {
                    iconUrl = "./assets/policeBlip.png"
                }else if (job == 'ambulance') {
                    iconUrl = "./assets/ambulanceBlip.png"
                }else {
                    iconUrl = "./assets/blip.png"
                }
                
                const marker = L.marker([coords.y, coords.x], {
                    icon: customIcon(iconUrl),
                }).bindPopup(`Name: ${name} <br> Job: ${job}`);
            
                const existingMarker = this.policeGroup.getLayers().find((layer) => layer.options.source === source);

                if (existingMarker) {
                    existingMarker.setLatLng([coords.y, coords.x]);
                } else {
                    marker.options.source = source;
                    this.policeGroup.addLayer(marker);
                }
            }
        },

        SetAccess(val,val2,val3) {
            this.access = val
            this.clickDeleteCharges = val2
            this.Access = val3
        },

        SetLocation(val) {
            this.location = val
        },

        SetCams(val) {
            this.cams = val
        },

        SetProfiles(val) {
            allprofiles = val
        },

        showPhoto(index){
            if (!this.input3) {
                this.locationInput = 'gallery'
                this.photoIndex = index
                this.previewPhoto = true;
                this.blur = 'blur(2px)';
                postData(`https://${this.resourceName}/SetBlur` , {
                    toggle: true,
                })
                this.previewPhotoLink = this.profile.gallery[index];
            }
        },

        ChangeGpsCode() {
            postData(`https://${this.resourceName}/changeGpsCode`, {
                gpscode: this.gpscode,
            })
        },
        
        ChangeTheme(val) {
            if (this.displayPage['LIVEMAP']) {
                setTimeout(() => {
                    this.restartLiveMap()
                }, 50);
            }

            localStorage.setItem("theme", val);
            this.theme = val
            if (val == 'light') {
                document.documentElement.classList.add('light-mode')
            }else {
                document.documentElement.classList.remove('light-mode')
            }
      
        },

        SetAllVehicles(val) {
            this.allvehicles = val
        },

        reviewVehicle(plate,carname,identifier,category,color,gallery) {
            this.currentPage = 'vehicles'
            this.vehicleownername = ''

            this.allusers.forEach(user => {
                if (user['identifier'] == identifier) {
                    var name = user.name + ' ' + user.surname

                    this.vehicleownername = name
                    return
                }
            })

            this.reviewplate = plate
            this.reviewcarname = carname
            if(!checkFileExist(`./assets/cars/${carname}.png`)) {
                this.reviewcarlogo = './assets/cars/noimage.png'
            }else {
                this.reviewcarlogo = `./assets/cars/${carname}.png`
            }

            this.reviewcategory = category
            this.reviewcolor = color
            if (gallery) {
                this.reviewCarGallery = JSON.parse(gallery)
            }else {
                this.reviewCarGallery = []
            }
        },

        reviewHouse(val,val2) {
            this.reviewHouses.name = val

            if (val2) {
                this.allusers.filter((user) => {
                    if (user.identifier == val2) {
                        this.reviewHouses.playerName = user.name + ' ' + user.surname
                        return
                    }
                })
            } else {
                this.reviewHouses.playerName = null
            }
        },

        UpdatePolices(val) {
            this.polices = val
        },

        SetHouses(val) {
            this.Houses = val;
        },

        liveMapAddHousesBlips(val) {
            if (val.length > 0) {
                if (!this.HouseGroup) {
                    this.HouseGroup = L.layerGroup().addTo(this.map);
                  } else {
                    this.HouseGroup.clearLayers();
                  }
                
                  const iconUrl = './assets/Houses.png';
                
                  for (let i = 0; i < this.Houses.length; i++) {
                    const house = this.Houses[i];
                    const { x, y } = house.location;
                
                    const marker = L.marker([y, x], { icon: L.icon({ iconUrl: iconUrl, iconSize: [20, 20] }) })
                      .addTo(this.HouseGroup);
                
                    const popupContent = `<b>${house.house}<br> `;
                    marker.bindPopup(popupContent);
                
                    const button = document.createElement('button');
                    button.innerHTML = 'Set Point';
                    button.addEventListener('click', () => {
                        postData(`https://${this.resourceName}/setwaypoint`, {
                            x: x,
                            y: y,
                        })
                    });
                
                    const popup = marker.getPopup();
                    const contentWrapper = document.createElement('div');
                    contentWrapper.innerHTML = popupContent;
                    contentWrapper.appendChild(button);
                
                    popup.setContent(contentWrapper);
                }
            }
        },

        liveMapLoadCallsBlips() {
            if (this.CallGroups) {
                this.map.removeLayer(this.CallGroups);
                this.CallGroups = null;
            }
        
            if (this.calls.length > 0) {
                this.CallGroups = L.layerGroup().addTo(this.map);
                this.calls.forEach((call) => {
                    this.liveMapAddCallBlips(call);
                });
            }
        },        

        liveMapAddCallBlips(val) {
            var X = val.location.x;
            var Y = val.location.y;
          
            if (!this.CallGroups) {
                this.CallGroups = L.layerGroup().addTo(this.map);
            }
          
            const marker = L.marker([Y, X]).addTo(this.CallGroups);
            marker.bindPopup(val.type);
        },
          
        SendCall(val) {
            const currentTime = new Date();
            val.time = currentTime;
            this.calls.push(val);

            if(this.map) {
                var X = val.location.x;
                var Y = val.location.y;
              
                if (!this.CallGroups) {
                    this.CallGroups = L.layerGroup().addTo(this.map);
                }
              
                const marker = L.marker([Y, X]).addTo(this.CallGroups);
                marker.bindPopup(val.type);
              
                this.totalcalls = this.calls.length;
            }
        },

        CalculateTime(time) {
            const date = new Date(time);
            const now = new Date(); 
            const diffInSeconds = Math.floor((now - date) / 1000);
          
            if (diffInSeconds < 1) {
              return 'just now'; 
            } else if (diffInSeconds < 60) {
              return diffInSeconds + 's ago'; 
            } else if (diffInSeconds < 3600) {
              const diffInMinutes = Math.floor(diffInSeconds / 60); 
              return diffInMinutes + 'm ago'; 
            } else {
              const diffInHours = Math.floor(diffInSeconds / 3600); 
              return diffInHours + 'h ago'; 
            }
        },

        SetWayponit(val) {
            postData(`https://${this.resourceName}/setwaypoint`, {
                x: val.x,
                y: val.y,
            })
        },

        RemoveCall(val) {
            postData(`https://${this.resourceName}/removecall`, {
              index: val,
            });
        
        },

        showContextMenu(event, item ,index) {
            event.preventDefault();
            this.contextMenuVisible = true;
            this.selectedItem = item;
            this.selectedItemIndex = index;
            this.contextMenuTop = event.pageY;
            this.contextMenuLeft = event.pageX;
            document.addEventListener('click', this.hideContextMenu);
        },

        hideContextMenu() {
            this.contextMenuVisible = false;
            document.removeEventListener('click', this.hideContextMenu);
        },

        deleteItem() {
            this.RemoveInvolvedPeople(this.selectedItemIndex,this.selectedItem)
        },

        showInput(val,val2,val3) {
            this.inputtext = ''
            this.searchuser = ''
            this.input4 = true
            this.blur = 'blur(2px)';
            this.headerLoc = val;
            this.searchuser = ''
            this.inputloc = val2
            this.search = val3
            postData(`https://${this.resourceName}/SetBlur` , {
                toggle: true,
            })
        },

        SendInput(val,val2,money,communityservice,jailtime) {
            this.inputtext = val
            this.input4 = false
            this.blur = null
            postData(`https://${this.resourceName}/SetBlur` , {
                toggle: false,
            })
            if (this.inputtext.trim().length > 0){
                if(this.inputloc == 'involved') {
                    this.evidenceinvolved.push(this.inputtext)
                }else if (this.inputloc == 'images'){
                    this.images.push(this.inputtext)
                }else if (this.inputloc == 'warrant-involved') {
                    this.warrantinvolved.push(this.inputtext)
                }else if (this.inputloc == 'warrant-cops-involved') {
                    this.warrantcopsinvolved.push(this.inputtext)
                }else if (this.inputloc == 'warrant-vehicles-involved') {
                    this.warrantvehiclesinvolved.push(this.inputtext)
                }else if (this.inputloc == 'incident-involved') {
                    this.incidentinvolved.push({
                        name: this.inputtext,
                        identifier: val2,
                    })
                    if (this.incident.desc) {
                        this.incident.involved.push({
                            name: this.inputtext,
                            identifier: val2,
                        })
                    }
                }else if (this.inputloc == 'evidence-involved') {
                    this.evidence.involved.push(this.inputtext)
                }else if (this.inputloc == 'addressline') {
                    this.addressline = this.inputtext
                }else if (this.inputloc == 'profiles-gallery') {
                    this.profile.gallery.push(this.inputtext)
                } else if (this.inputloc == 'incident-cops') {
                    this.incidentcops.push(this.inputtext)
                    if(this.incident.desc) {
                        this.incident.cops.push(this.inputtext)
                    }
                } else if (this.inputloc == 'incident-vehicles') {
                    this.incidentvehicles.push(this.inputtext)
                    if(this.incident.desc) {
                        this.incident.vehicles.push(this.inputtext)
                    }
                } else if (this.inputloc == 'incident-evidences') {
                    this.incidentevidences.push(this.inputtext)
                    if (this.incident.desc) {
                        this.incident.evidences.push(this.inputtext)
                    }
                }else if (this.inputloc == 'incident-fines') {
                    this.incidentfines.push({
                        name: this.inputtext,
                        money: money || 0,
                        communityservice: communityservice || 0,
                        jailtime: jailtime || 0,
                    })
                }
            }
        },

        mouseEnter() {
            if (this.input2 || this.input3 || this.previewPhoto || this.inputCharges || this.createCategory || this.input4 || this.contextMenuVisible || !this.mdtTransparent) {
                return
            }
            this.isTransparent = false;
        },
        mouseLeave() {
            if (this.input2 || this.input3 || this.previewPhoto || this.inputCharges || this.createCategory || this.input4 || this.contextMenuVisible || !this.mdtTransparent) {
                return
            }
            this.isTransparent = true;
        },

        reviewPlayer(name,surname,birthdate,grade,identifier,phone) {
            this.identifier = identifier
            this.reviewPlayerOpened = true
            this.profile.information = ''
            this.profile.playerImage = ''
            this.profile.licenses = []
            this.information = ''
            this.profile.gallery = []
            this.name = name
            this.surname = surname
            this.birthdate = birthdate
            this.profession = grade
            if (phone) {
                this.phoneNumber = phone
            }else {
                if (this.playerNumbers.length > 0) {
                    this.playerNumbers.forEach(number => {
                        if (number.id == this.identifier) {
                            this.phoneNumber = number.phone_number
                        }
                    });
                }else {
                    this.phoneNumber = 'N/A'
                }
            }
            this.CurrentLicenses()
            allprofiles.forEach(profile => {
                if (profile.identifier == this.identifier) {
                    this.profile.gallery = JSON.parse(profile.gallery)
                    this.profile.information = profile.information
                    this.profile.playerImage = profile.photo
                    if (this.licenseTypes == 'default' || this.licenseTypes == null) {
                        this.profile.licenses = JSON.parse(profile.licenses)
                    }
                    this.information = profile.information
                }
            });
        },

        showImage(index) {
            this.selectedImageIndex = index;
            this.isImageVisible = true;
            document.addEventListener('click', this.hideImage);
        },
        hideImage() {
            this.selectedImageIndex = null;
            this.isImageVisible = false;
            document.addEventListener('click', this.hideImage);
        },

        SaveCarPhotos() {
            postData(`https://${this.resourceName}/savecarphotos`, {
                gallery: this.reviewCarGallery,
                plate: this.reviewplate,
            })
        },

        SaveProfile() {
            postData(`https://${this.resourceName}/saveprofile`, {
                identifier: this.identifier,
                gallery: this.profile.gallery,
                licenses: this.profile.licenses,
                info: this.profile.information,
                image: this.profile.playerImage,
            })
        },

        SetEvidences(val) {
            this.evidences = val
        },

        SetWarrants(val) {
            this.allwarrants = val
        },

        selectWarrantType(val) {
            this.warrantype = val
        },

        openWarrant(index,reason,adress,created,involved,type,name,vehicles,cops,id) {
            this.currentPage = 'warrants'
            this.warrant.id = id
            this.warrant.index = index + 1
            this.warrant.reason = reason
            this.warrant.adress = adress
            this.warrant.created = created
            this.warrant.type = type
            this.warrant.name = name
            this.warrant.vehicles = JSON.parse(vehicles)
            this.warrant.cops = JSON.parse(cops)
            this.warrant.involved = JSON.parse(involved)
        },

        deleteImage(){
            if (this.locationInput == 'gallery') {
                this.blur = null
                this.previewPhoto = false
                this.profile.gallery.splice(this.photoIndex,1)
                this.SaveProfile()
                postData(`https://${this.resourceName}/SetBlur` , {
                    toggle: false,
                })
            }else if (this.locationInput == 'gallery2') {

                this.blur = null
                this.previewPhoto = false
                this.reviewCarGallery.splice(this.photoIndex,1)
                this.SaveCarPhotos()
                postData(`https://${this.resourceName}/SetBlur` , {
                    toggle: false,
                })
            }else if (this.locationInput == 'images') {
                this.blur = null
                this.previewPhoto = false
                this.evidence.images.splice(this.photoIndex,1)
                postData(`https://${this.resourceName}/SetBlur` , {
                    toggle: false,
                })
            }
        },

        RemoveInvolvedPeople(val,loc) {
            if(loc == 'warrant-involved') {
                this.warrantinvolved.splice(val,1)
            }else if (loc == 'evidence') {
                this.evidenceinvolved.splice(val,1)
            }else if (loc == 'profilegallery') {
                this.profile.gallery.splice(val,1)
            }else if (loc == 'incident-involved') {
                this.incidentinvolved.splice(val,1)
            }else if (loc == 'incident-cops') {
                this.incidentcops.splice(val,1)
            }else if (loc == 'incident-vehicles') {
                this.incidentvehicles.splice(val,1)
            }else if (loc == 'incident-evidences') {
                this.incidentevidences.splice(val,1)
            }else if (loc == 'incident-fines') {
                this.incidentfines.splice(val,1)
            }else if (loc == 'profiles-licenses') {
                this.profile.licenses.splice(val,1)
            }else if (loc == 'profiles-tags') {
                this.profile.tags.splice(val,1)
            }else if (loc == 'warrant-cops-involved') {
                this.warrantcopsinvolved.splice(val,1)
            }else if (loc == 'warrant-vehicles-involved') {
                this.warrantvehiclesinvolved.splice(val,1)
            }else if (loc == 'evidence-involved') {
                this.evidence.involved.splice(val,1)
            }else if (loc == 'incident.involved') {
                this.incident.involved.splice(val,1)
            }else if (loc == 'incident.cops') {
                this.incident.cops.splice(val,1)
            }else if (loc == 'incident.vehicles') {
                this.incident.vehicles.splice(val,1)
            }else if (loc == 'incident.evidences') {
                this.incident.evidences.splice(val,1)
            }else if (loc == 'evidence-images') {
                this.images.splice(val,1)
            }
        },

        RemoveEvidenceImage(val) {
            this.images.splice(val,1)
        },

        ChangeInput(val,val2) {
            this.inputtext = val
        },

        AddText() {
            if(this.url != '' || this.inputtext != '' || this.url.length > 0 || this.inputtext.length > 0) {
                if(this.locationInput == 'gallery') {
                    this.profile.gallery.push(this.url)
                    this.input3 = false
                    this.blur = null
                    this.SaveProfile()
                    postData(`https://${this.resourceName}/SetBlur` , {
                        toggle: false,
                    })
                }else if (this.locationInput == 'gallery2') {
                    this.reviewCarGallery.push(this.url)
                    this.input3 = false
                    this.blur = null
                    this.SaveCarPhotos()
                    postData(`https://${this.resourceName}/SetBlur` , {
                        toggle: false,
                    })
                }else {
                    this.profile.playerImage = this.url
                    this.input3 = false
                    this.blur = null
                    this.SaveProfile()
                    postData(`https://${this.resourceName}/SetBlur` , {
                        toggle: false,
                    })
                }  
            }
        },

        setNumbers(val) {
            this.playerNumbers = val
        },

        TakePhoto() {
            this.show = false
            this.input3 = false
            $.post(`https://${this.resourceName}/takephoto`, JSON.stringify({
            }),(data) => {
                if(data) {
                    if(this.locationInput == 'gallery') {
                        this.profile.gallery.push(data)
                        this.SaveProfile()
                    }else if (this.locationInput == 'gallery2'){
                        this.reviewCarGallery.push(data)
                        this.SaveCarPhotos()
                    } else if (this.locationInput == 'images') {
                        this.images.push(data)
                    }else if (this.locationInput == 'evidence-images')
                    {
                        this.evidence.images.push(data)
                    }  else {
                        this.profile.playerImage = data
                        this.SaveProfile()
                    }
                  
                    this.show = true
                    this.blur = null
                    postData(`https://${this.resourceName}/SetBlur` , {
                        toggle: false,
                    })
                }else if (data == false){
                    this.show = true
                    this.blur = null
                    postData(`https://${this.resourceName}/SetBlur` , {
                        toggle: false,
                    })
                }
            });

        },

        addLicense() {
            this.input2 = true
            this.blur = 'blur(2px)';
            postData(`https://${this.resourceName}/SetBlur` , {
                toggle: true,
            })
        },

        WarrantType(val) {
            this.warrantype = val
        },

        CreateEvidence() {
            const date = new Date();
            let time = date.toLocaleString().split(',').join('');
            if(this.evidenceinvolved != "" ) {
                postData(`https://${this.resourceName}/createevidence`, {
                    name: this.evidencename,
                    desc: this.evidencedesc,
                    involved: this.evidenceinvolved,
                    images: this.images,
                    time: time,
                })
                this.evidencename = ''
                this.evidencedesc = ''
                this.evidenceinvolved = []
                this.images = []
            }
        },

        CreateWarrant() {
            const date = new Date();
            let timewarrant = date.toLocaleString().split(',').join('');
            if(this.warrantreason != "" ) {
                postData(`https://${this.resourceName}/createwarrant`, {
                    name: this.warrantname,
                    reason:  this.warrantreason,
                    type: this.warrantype,   
                    involved: this.warrantinvolved,
                    involvedcops: this.warrantcopsinvolved,
                    involvedvehicles: this.warrantvehiclesinvolved,
                    adress: this.location,
                    time: timewarrant,
                })
                this.warrantreason = ''
                this.warrantname = ''
                this.warrantcopsinvolved = []
                this.warrantvehiclesinvolved = []
                this.warrantype = 'search'
                this.warrantinvolved = []
                this.addressline = ''
            }
        },
        
        CreateIncidents(){
            const dateincident = new Date();
            let timeincident = dateincident.toLocaleString().split(',').join('');

            if(this.incidentname != "" ) {
                postData(`https://${this.resourceName}/createincident`, {
                    name: this.incidentname,
                    desc: this.incidentdescription,
                    involved: this.incidentinvolved,
                    cops: this.incidentcops,
                    vehicles: this.incidentvehicles,
                    evidences: this.incidentevidences,
                    fines: this.incidentfines,
                    time: timeincident,
                })
                this.incidentname = ''
                this.incidentdescription = ''
                this.incidentinvolved = []
                this.incidentcops = []
                this.incidentvehicles = []
                this.incidentevidences = []
                this.incidentfines = []
            }
        },

        DeleteWarrant(val) {
            postData(`https://${this.resourceName}/deletewarrant`, {
                time: val,
                reason : this.warrant.reason,
                adress: this.warrant.adress,
                involved: this.warrant.involved,
                type: this.warrant.type,
                name: this.warrant.name,
                vehicles: this.warrant.vehicles,
                cops: this.warrant.cops,
            })
            this.warrant.index = null
            this.warrant.time = null
            this.warrant.reason = null
            this.warrant.involved = null
        },

        DeleteIncidents(val) {
            postData(`https://${this.resourceName}/deleteincidents`, {
                id: this.incident.id,
                name: this.incident.name,
                desc: this.incident.desc,
                involved: this.incident.involved,
                cops: this.incident.cops,
                vehicles: this.incident.vehicles,
                evidences: this.incident.evidences,
                fines: this.incident.fines,
            })
            this.incident.desc = null
        },

        DeleteEvidence() {
            postData(`https://${this.resourceName}/deleteevidence`, {
                id: this.evidence.id,
                name: this.evidence.name,
                desc: this.evidence.desc,
                involved: this.evidence.involved,
                images: this.evidence.images,
            })
            this.evidence.index = null
            this.evidence.name = null
            this.evidence.time = null
            this.evidence.involved = null
            this.evidence.images = null
        },

        evidenceManage(index,time,involved,images,name,desc,id) {
            this.evidence.id = id
            this.evidence.index = index + 1
            this.evidence.time = time
            this.evidence.name = name
            this.evidence.desc = desc
            this.evidence.involved = JSON.parse(involved)
            this.evidence.images = JSON.parse(images)
        },

        warrantManage(index,reason,adress,created,involved,type,name,vehicles,cops,id) {
            this.warrant.id = id
            this.warrant.index = index + 1
            this.warrant.reason = reason
            this.warrant.adress = adress
            this.warrant.created = created
            this.warrant.type = type
            this.warrant.name = name
            this.warrant.vehicles = JSON.parse(vehicles)
            this.warrant.cops = JSON.parse(cops)
            this.warrant.involved = JSON.parse(involved)
        },

        ManageIncidents(index,name,desc,involved,cops,vehicles,evidences,fines,time,id) {
            this.currentPage = 'incidents'
            this.incident.id = id
            this.incident.index = index
            this.incident.name = name
            this.incident.desc = desc
            this.incident.involved = JSON.parse(involved)
            this.incident.cops = JSON.parse(cops)
            this.incident.vehicles = JSON.parse(vehicles)
            this.incident.fines = JSON.parse(fines)
            this.incident.time = time
        },

        changeImage() {
            this.isHovered = true;
            if (this.isHovered) {
                this.imageSrc = './assets/mapcolored.png';
            }
        },

        resetImage() {
            this.isHovered = false;
            this.imageSrc = './assets/map.png';
        },

        hoverGalleryImage(index) {
            this.galleryHovered = index;
        },

        resetGalleryImage() {
            this.galleryHovered = null;
        },

        hoverVehicleGalleryImage(index) {
            this.galleryVehicleHovered = index;
        },

        resetVehicleGalleryImage() {
            this.galleryVehicleHovered = null;
        },

        hoverIncidentVehicleGalleryImage(index) {
            this.galleryIncidentVehicleHovered = index;
        },

        resetIncidentVehicleGalleryImage() {
            this.galleryIncidentVehicleHovered = null;
        },

        showPhotoVehicleGallery(index){
            if (!this.input3) {
                this.photoIndex = index
                this.locationInput = 'gallery2'
                this.previewPhoto = true;
                this.blur = 'blur(2px)';
                this.previewPhotoLink = this.reviewCarGallery[index];
                postData(`https://${this.resourceName}/SetBlur` , {
                    toggle: true,
                })
            }
        },

        showIncidentPhotoVehicleGallery(index){
            if (!this.input3) {
                this.photoIndex = index
                this.locationInput = 'images'
                this.previewPhoto = true;
                this.blur = 'blur(2px)';
                this.previewPhotoLink = this.evidence.images[index];
                postData(`https://${this.resourceName}/SetBlur` , {
                    toggle: true,
                })
            }
        },

        hoverCamsImage(index) {
            this.camsHovered = index;
        },

        resetCamsImage() {
            this.camsHovered = null;
        },

        changePlayerImage() {
            this.isPlayerHovered = true;
        },

        inputShow(val) {
            this.locationInput = val
            this.input3 = true
            this.blur = 'blur(2px)';
            postData(`https://${this.resourceName}/SetBlur` , {
                toggle: true,
            })
        },

        resetPlayerImage() {
            this.isPlayerHovered = false;
        },
        
        SetDate() {
            const weekday = [
                "Sunday",
                "Monday",
                "Tuesday",
                "Wednesday",
                "Thursday",
                "Friday",
                "Saturday"
            ];
            const date = new Date();
            let day = date.getDate();
            let time = date.toLocaleString();
            var dayIndex = date.getDay();
            let month = date.getMonth() + 1;
            const year = date.getFullYear()
            if (day < 10) {
                day = '0' + day
            }
            if (month < 10) {
                month = '0' + month
            }
            this.month = month
            this.day = day
            this.year = year
            this.dayLabel = weekday[dayIndex]
        },

        UpdateChatMessages(messages) {
            this.chatMessages = messages
            Vue.nextTick(() => {
                let element = document.querySelector('.dashboard-message')
                if (document.body.contains(element)) {
                    element.scrollTop = element.scrollHeight;
                }
            })
        },

        AddChatMessage(messages, type) {
            if (type) {
                this.chatMessages = []
            }else {
                this.chatMessages.push(messages)
                Vue.nextTick(() => {
                    let element = document.querySelector('.dashboard-message')
                    if (document.body.contains(element)) {
                        element.scrollTop = element.scrollHeight;
                    }
                })
            }
        },

        SendChatMessage() {
            if (this.chatMessage.length > 0 && this.chatMessage.length <= 150) {
                if (this.sendChatMessageCounter >= 2) {
                    if (this.sendChatMessageTimeout) {
                        clearTimeout(this.sendChatMessageTimeout);
                    }
        
                    this.sendChatMessageTimeout = setTimeout(() => {
                        this.sendChatMessageCounter = 0; 
                        postData(`https://${this.resourceName}/sendChatMessage`, {
                            message: this.chatMessage
                        })
        
                        this.chatMessage = '';
                        this.sendChatMessageTimeout = null;
                    }, this.sendChatMessageDelay);
                } else {
                    this.sendChatMessageCounter++;
                    postData(`https://${this.resourceName}/sendChatMessage`, {
                        message: this.chatMessage
                    })
        
                    this.chatMessage = '';
                }
            }
        },

        openCam(index) {
            postData(`https://${this.resourceName}/openCam`, {
                index: index
            })
        },

        CapitalizeCarNumbers(number,text) {
            if (number >= 100) {
                return `${text}<span class="active">${number}</span>`
            } else if (number >= 10) {
                return `${text}<span class="lightWarrant">&nbsp0</span><span class="activeWarrant">${number}</span>`
            } else if (number >= 0) {
                return `${text}<span class="lightWarrant">&nbsp00</span><span class="activeWarrant">${number}</span>`
            } else {
                return `${text}<span class="lightWarrant">&nbsp000</span>`

            }
        },

        CapitalizeWarrantIndex(number) {
            if (number >= 100) {
                return `Warrant<span class="active">${number}</span>`
            } else if (number >= 10) {
                return `Warrant<span class="lightWarrant">&nbsp0</span><span class="activeWarrant">${number}</span>`
            } else if (number >= 0) {
                return `Warrant<span class="lightWarrant">&nbsp00</span><span class="activeWarrant">${number}</span>`
            } else {
                return `Warrant<span class="lightWarrant">&nbsp000</span>`

            }
        },

        TotalPolices() {
            var count = 0;
  
            for (var i = 0; i < this.allusers.length; i++) {
                if (this.Access[this.allusers[i].grade]) {
                    count++;
                }
            }
            this.totalpolice = count
        },

        TotalUsers(val) {
            this.allusers = val
            this.TotalPolices()
        },

        OpenCam(index,time) {
            this.show = false
            this.cam = true
            this.camname = index
            this.gametime = time
        },

        CloseCam() {
            this.cam = false
            this.isTransparent = false
            this.show = true
        },

        Close(){
            this.reviewplate = ''
            this.identifier = ''
            this.profile.gallery = []
            this.profile.licenses = []
            this.profile.tags = []
            this.allLicenses = []
            this.blur = null
            $.post(`https://${this.resourceName}/exit`)
        },

        restartLiveMap() {
            if (this.map) {
                this.map.remove();
                this.map = null
            }
            this.HouseGroup = null
            this.CallGroups = null
            this.policeGroup = null
            setTimeout(() => {
                this.liveMapBuild();
                this.liveMapAddHousesBlips(this.Houses)
                this.liveMapLoadCallsBlips()
                this.loadPolicesBlips(this.liveMapPolices)
            }, 50);
        },

    },

    mounted() {
        OnNuiMessage()

        document.onkeydown = (evt) => {
            evt = evt || window.event;
            var isEscape = false;
            if ("key" in evt) {
                isEscape = (evt.key === "Escape" || evt.key === "Esc");
            } else {
                isEscape = (evt.keyCode === 27);
            }
            if (isEscape) {
                OnPressEsc(this.resourceName)
            }
        };
    },

    computed: {
        filterByVehicle() {
			if (this.searchvehicle) {
				return this.allvehicles.filter((vehicles) => {
                    if(vehicles.plate.toLowerCase().includes(this.searchvehicle.toLowerCase())) {
                        return vehicles.plate.includes(this.searchvehicle)
                    }else if (vehicles.carname.toLowerCase().includes(this.searchvehicle.toLowerCase())) {
                        return vehicles.carname.toLowerCase().includes(this.searchvehicle.toLowerCase())
                    }

				})
			} else {
				return this.allvehicles
			}
		},

        calculateFines() {
            if (this.incidentfines.length > 0) {
                var totalMoney = 0;
                var totalCommunity = 0;
                var totalJail = 0;
                for (var i = 0; i < this.incidentfines.length; i++) {
                    totalMoney += parseFloat(this.incidentfines[i].money);
                    totalCommunity += parseFloat(this.incidentfines[i].communityservice);
                    totalJail += parseFloat(this.incidentfines[i].jailtime);
                }
                return `<p>${totalMoney.toFixed(0)} $ | ${totalCommunity} Kamu Cezası | ${totalJail} Hapşs</p>`;
            }
        },

        calculateFines2() {
            if (this.incident.fines.length > 0) {
                var totalMoney = 0;
                var totalCommunity = 0;
                var totalJail = 0;
                for (var i = 0; i < this.incident.fines.length; i++) {
                    totalMoney += parseFloat(this.incident.fines[i].money);
                    totalCommunity += parseFloat(this.incident.fines[i].communityservice);
                    totalJail += parseFloat(this.incident.fines[i].jailtime);
                }
                return `<p>${totalMoney.toFixed(0)} $ | ${totalCommunity} Kamu Cezası | ${totalJail} Hapis</p>`;
            }
        },

        filterByHouses() {
			if (this.searchHouse) {
				return this.Houses.filter((house) => {
                    if(house.house.toLowerCase().includes(this.searchHouse.toLowerCase())) {
                        return house.house.includes(this.searchHouse)
                    }
				})
			} else {
				return this.Houses
			}
		},

        GetTotalCals() {
            if (this.totalcalls >= 100) {
                return `<span class="activeCount">${this.totalcalls}</span>`
            } else if (this.totalcalls >= 10) {
                return `<span class="lightCount">0</span><span class="activeCount">${this.totalcalls}</span>`
            } else if (this.totalcalls >= 0) {
                return `<span class="lightCount">00</span><span class="activeCount">${this.totalcalls}</span>`
            } else {
                return `<span class="lightCount">000</span>`

            }
        },

        GetTotalPolice() {
            if (this.totalpolice >= 100) {
                return `<span class="activeCount">${this.totalpolice}</span>`
            } else if (this.totalpolice >= 10) {
                return `<span class="lightCount">0</span><span class="activeCount">${this.totalpolice}</span>`
            } else if (this.totalpolice >= 0) {
                return `<span class="lightCount">00</span><span class="activeCount">${this.totalpolice}</span>`
            } else {
                return `<span class="lightCount">000</span>`
            }
        },

        filterByUsers() {
            if (this.searchuser && this.allusers || this.involvedbox) {
                return this.allusers.filter((user) => {
                    var name = user.name + ' ' + user.surname;
                    
                    return name.toLowerCase().includes(this.searchuser.toLowerCase());
                });
            } else {
                return this.allusers;
            }
        },

        filterPlayerVehicle() {
			if (this.identifier && this.allvehicles) {
				return this.allvehicles.filter((vehicles) => {
					return vehicles.identifier.includes(this.identifier)
				})
			} else {
				return false
			}
		},

        filterByJobs() {
			if (this.searchuser) {
				return this.polices.filter((police) => {
					return police.name.toLowerCase().includes(this.searchuser.toLowerCase())
				})
			} else {
				return this.polices
			}
		},

        filterByUser() {
			if (this.inputtext) {
               
				return this.allusers.filter((user) => {
                    var name = user.name + ' ' + user.surname
					return name.toLowerCase().includes(this.inputtext.toLowerCase())
				})
			} else {
				return false
			}
		},

        filterByVehiclePolice() {
			if (this.searchuser) {
				return this.allvehicles.filter((vehicles) => {
					return vehicles.plate.includes(this.searchuser)
				})
			} else {
				return this.allvehicles
			}
		},

        filterEvidencesIncident() {
			if (this.inputtext) {
				return this.evidences.filter((evidence) => {
					return evidence.involved_people.includes(this.inputtext)
				})
			} else {
				return this.evidences
			}
		},
 
        filterEvidences() {
			if (this.searchevidence) {
				return this.evidences.filter((evidence) => {
					return evidence.involved_people.includes(this.searchevidence)
				})
			} else {
				return this.evidences
			}
		},

        filterWarrants() {
			if (this.searchwarrant) {
				return this.allwarrants.filter((warrant) => {
					return warrant.name.includes(this.searchwarrant)
				})
			} else {
				return this.allwarrants
			}
		},
        
        filterChargesCategory() {
            if (this.searchcharges) {
              const filteredData = this.charges
                .filter(entry => entry.category.toLowerCase().includes(this.searchcharges.toLowerCase()));
              return filteredData;
            } else {
              return this.charges;
            }
        },

        filterCharges2() {
            if (this.searchcharges2) {
                const filteredData = this.charges.flatMap(entry => JSON.parse(entry.data))
                .filter(data => data.reason.toLowerCase().includes(this.searchcharges2.toLowerCase()));
                return filteredData;
            } else {
                return this.selectedCategoryData
            }
        },          

        filterIncidents() {
            if (this.searchincident) {
				return this.incidents.filter((incident) => {
					return incident.name.includes(this.searchincident)
				})
			} else {
				return this.incidents
			}
        },

        filterPlayerIncidents() {
            if (this.identifier) {
				return this.incidents.filter((incident) => {
                    var name = this.name + ' ' + this.surname
					return incident.involved.includes(name)
				})
			} else {
				return false
			}
        },

        filterPlayerHouses() {
            if (this.identifier && this.Houses.length > 0) {
				return this.Houses.filter((house) => {
                    if (house.keyholders) {
                        return house.keyholders.includes(this.identifier)
                    }else {
                        return false
                    }
				})
			} else {
				return false
			}
        },

        filterPlayerWarrants() {
            if (this.identifier) {
				return this.allwarrants.filter((incident) => {
                    var name = this.name + ' ' + this.surname
					return incident.involved_people.includes(name)
				})
			} else {
				return false
			}
        },
    }
})

const OnPressEsc = (resourceName) => {
    $.post(`https://${resourceName}/SetBlur`, JSON.stringify({
        toggle: false,
    }));
    app.photoIndex = null
    if(app.input2) {
        app.input2 = false
        app.blur = null
    }else if (app.input3) {
        app.input3 = false
        app.blur = null
    }else if (app.previewPhoto) {
        app.previewPhoto = false
        app.blur = null
    }else if (app.inputCharges) {
        app.inputCharges = false
        app.blur = null
    }else if (app.createCategory) {
        app.createCategory = false
        app.blur = null
    }else if (app.input4) {
        app.input4 = false
        app.blur = null
    }
    else  {
        app.identifier = ''
        app.profile.gallery = []
        app.profile.licenses = []
        app.blur = null
        app.input2 = false
        app.input3 = false
        app.input4 = false
        app.previewPhoto = false
        app.inputCharges = false
        app.createCategory = false
        $.post(`https://${resourceName}/exit`)
    }
}

document.addEventListener("click", function (event) {
    const closet = event.target.closest(".addLicensePage")
    if (closet == null && app.input2 == true && !event.target.closest(".addLicense")) {
        OnPressEsc(app.resourceName)
    }
});

document.addEventListener("click", function (event) {
    const closet = event.target.closest(".inputShow")
    if (closet == null && app.input3 == true && !event.target.closest(".photo") && !event.target.closest(".person-information-gallery") && !event.target.closest(".vehicle-gallery") && !event.target.closest(".car-owner") && !event.target.closest(".car-owner")) {
        OnPressEsc(app.resourceName)
    }
});

document.addEventListener("click", function (event) {
    const closet = event.target.closest(".fullScreenPhoto")
    if (closet == null && app.previewPhoto == true && !event.target.closest(".photo") && !event.target.closest(".gallery-photos") && !event.target.closest(".vehicle-gallery") && !event.target.closest(".fullScreenPhoto") && !event.target.closest(".car-owner")) {
        OnPressEsc(app.resourceName)
    }
});

document.addEventListener("click", function (event) {
    const closet = event.target.closest(".inputShow")
    if (closet == null && app.input4 == true && !event.target.closest(".addLicense") && !event.target.closest(".addInvolved") && !event.target.closest(".addEvidence") && !event.target.closest(".addWarrant") && !event.target.closest(".addIncident") && !event.target.closest(".addFine") && !event.target.closest(".car-owner")) {
        OnPressEsc(app.resourceName)
    }
});

document.addEventListener("click", function (event) {
    const closet = event.target.closest(".inputCharges")
    if (closet == null && app.inputCharges == true && !event.target.closest(".column-info4")) {
        OnPressEsc(app.resourceName)
    }
});

document.addEventListener("click", function (event) {
    const closet = event.target.closest(".inputCategory")
    if (closet == null && app.createCategory == true && !event.target.closest(".inputCharges")) {
        OnPressEsc(app.resourceName)
    }
});

window.postData = async (url = '', data = {}) => {
    try {
        const response = await fetch(url, {
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
        return response.json(); 
    } catch (error) {
        // console.log(error)
    }
}

function checkFileExist(urlToFile) {
    var xhr = new XMLHttpRequest();
    xhr.open('HEAD', urlToFile, false);
    xhr.send();

    if (xhr.status == "404") {
        return false;
    } else {
        return true;
    }
}