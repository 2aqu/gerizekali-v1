const module = {
    namespaced: true,
    state: {
        vehiclesList: {
            import: [
                {
                    brand: "Dodge",
                    name: "Challenger 2018 V8",
                    price: 120000,
                    hash: "challenger",
                    id: 0
                },
                {
                    brand: "BMW",
                    name: "116i M Sport",
                    price: 60000,
                    hash: "116i",
                    id: 1
                },
                {
                    brand: "NISSAN",
                    name: "GTR R50 2021",
                    price: 230000,
                    hash: "gtr",
                    id: 2
                },
                {
                    brand: "TOYOTA",
                    name: "Supra Mk5 2021",
                    price: 260000,
                    hash: "supra",
                    id: 3
                },
                {
                    brand: "CHEVROLET",
                    name: "Camaro SS",
                    price: 120000,
                    hash: "camaro",
                    id: 4
                },
                {
                    brand: "FORD",
                    name: "Mustang GT",
                    price: 150000,
                    hash: "mustang",
                    id: 5
                },
                {
                    brand: "AUDI",
                    name: "RS6 Avant",
                    price: 200000,
                    hash: "rs6",
                    id: 6
                },
                {
                    brand: "MERCEDES",
                    name: "AMG GT R",
                    price: 200000,
                    hash: "gt",
                    id: 7
                },
                {
                    brand: "BMW",
                    name: "M5 F90",
                    price: 200000,
                    hash: "m5",
                    id: 8
                },
            ],
        },
        testDriveActive: false,
        previewActive: false,
        navItems: [
            {
                name: "Import",
                id: "import"
            },
            {
                name: "Super",
                id: "super"
            }
        ],
        previewVehicle: null,
        gameData: {
            stats: {
                force: 0,
                acceleration: 0,
                speed: 0,
                handling: 0,
                braking: 0,
            }
        },
        showingCountdown: "00:00",
        countDownInterval: null,
    },
    actions: {
        async addCategory({ state, dispatch }, { name, id }) {
            const success = await postNUI('addCategory', { name, id });
            if (!success) return;
            state.vehiclesList[id] = [];
            state.navItems.push({ name, id });
            return { name, id };
        },
        async removeCategory({ state, dispatch }, id) {
            const success = await postNUI('removeCategory', {id});
            if (!success) return;
            delete state.vehiclesList[id];
            state.navItems = state.navItems.filter(item => item.id !== id);
            return true;
        },
        async addVehicle({ state, dispatch }, { brand, name, hash, vehImage, brandImage, price, category }) {
            const success = await postNUI('addVehicle', { brand, name, hash, vehImage, brandImage, price, category });
            if (!success) return;

            const categoryVehicles = state.vehiclesList[category];
            if (categoryVehicles) {
                categoryVehicles.push({
                    brand: brand,
                    name: name,
                    price: price,
                    hash: hash,
                    vehImage: vehImage,
                    brandImage: brandImage,
                },);
                return true;
            }
            return false;
        },
        async editVehicle({ state, dispatch }, { id, brand, name, hash, vehImage, brandImage, price, category }) {
            const success = await postNUI('editVehicle', { id, brand, name, hash, vehImage, brandImage, price, category });
            if (!success) return;

            const categoryVehicles = state.vehiclesList[category];
            if (categoryVehicles) {
                const vehicle = categoryVehicles.find(vehicle => vehicle.id === id);
                if (vehicle) {
                    vehicle.brand = brand;
                    vehicle.name = name;
                    vehicle.price = price;
                    vehicle.hash = hash;
                    vehicle.vehImage = vehImage;
                    vehicle.brandImage = brandImage;
                    return true;
                }
            }
            return false;
        },
        async deleteVehicle({ state, dispatch }, { id, category }) {
            const success = await postNUI('deleteVehicle', { id, category });
            if (!success) return;
            
            const categoryVehicles = state.vehiclesList[category];
            if (categoryVehicles) {
                const vehicle = categoryVehicles.find(vehicle => vehicle.id === id);
                if (vehicle) {
                    categoryVehicles.splice(categoryVehicles.indexOf(vehicle), 1);
                    return true;
                }
            }
            return false;
        },
        async startCountdown({state}, time) {
            const dateN = new Date()
            const dateF = new Date(dateN.getTime() + time * 1000)
            state.countDownInterval = setInterval(() => {
                const dateNow = new Date();
                const diff = dateF - dateNow;
                var minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((diff % (1000 * 60)) / 1000);
                minutes = minutes < 10 ? "0" + minutes : minutes
                seconds = seconds < 10 ? "0" + seconds : seconds
                state.showingCountdown = `${minutes}:${seconds}`;
                if (diff < 0) {
                    clearInterval(state.countDownInterval);
                    state.showingCountdown = "00:00";
                }
            }, 1000);
        },
        async endCountdown({state}) {
            state.showingCountdown = "00:00";
            clearInterval(state.countDownInterval);
        }
    }
}

window.addEventListener('message', (event) => {
    const data = event.data;
});

export default module