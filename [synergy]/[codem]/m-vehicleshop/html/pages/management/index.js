import importTemplate from '../../js/util/importTemplate.js';
import inlineSvg from '../../js/util/inlineSvg.js';

export default {
    template: await importTemplate('pages/management/index.html'),
    components: {
        'inline-svg': inlineSvg
    },
    data: () => ({
        searchActive: false,
        selectedNav: null,
        selectedModel: "",
        bossEditMode: false,
        accessNames: {
            vehicle: 'PDM Erişimini Düzenle',
            vault: 'Kasa Erişimi',
        },
        vaultAmount: null,
        logsSearchInput: '',
        searchInput: "",
        tempCategoryName: "",
    }),
    methods: {
        editCategoryName(item) {
            this.tempCategoryName = item.name
            item.editing = true
        },
        saveCategoryName(item) {
            this.$store.dispatch('management/editCategoryName', {
                id: item.id,
                name: this.tempCategoryName,
            }).then(() => {
                item.editing = false
            })
        },
        cancelCategoryName(item) {
            item.editing = false
            this.tempCategoryName = "";
        },
        selectNav(nav) {
            this.selectedNav = nav;
        },
        formatPrice(price) {
            return new Intl.NumberFormat('en-US', {
                style: 'currency',
                currency: 'USD',
                minimumFractionDigits: 0,
            }).format(price);
        },
        hasAccess(employee, access) {
            return employee.access[access] === true;
        },
        playerHasVaultAccess() {
            return this.player.access.vault === true || this.player.access.owner === true;
        },
        toggleAccess(employee, access) {
            const hasAccess = this.hasAccess(employee, access);
            const accessName = this.accessNames[access];
            this.$store.dispatch('showModal', {
                title: accessName,
                content: 'text',
                text: `${hasAccess ? 'Remove' : 'Give'} Access ${hasAccess ? 'From' : 'To'} ${employee.name}`,
                buttons: [
                    {
                        text: "Evet",
                        class: "green",
                        value: true
                    },
                    {
                        text: "Hayır",
                        class: "gray",
                        value: false
                    }
                ]
            }).then(async (result) => {
                if (!result) return;
                const success = await postNUI('editAccess', { id: employee.id, perm: access, value: !hasAccess });
                if (!success) return;
                employee.access[access] = !hasAccess;
            });
        },
        addVehicle() {
            this.$store.dispatch('showModal', {
                title: 'Yeni Araç Ekle',
                content: 'form',
                type: 'new-vehicle',
                fields: [
                    {
                        name: 'brand',
                        placeholder: 'Araç Üreticisi',
                        maxlength: 35,
                        required: true,
                    },
                    {
                        name: 'name',
                        placeholder: 'Araç Modeli',
                        maxlength: 35,
                        required: true,
                    },
                    {
                        name: 'hash',
                        placeholder: 'Araç Seri No (-hash)',
                        maxlength: 35,
                        required: true,
                    },
                    {
                        name: 'vehImage',
                        placeholder: 'Araç Resmi (PNG)',
                        required: true,
                    },
                    {
                        name: 'brandImage',
                        placeholder: 'Marka Resmi (PNG)',
                        required: true,
                    },
                    {
                        name: 'price',
                        placeholder: 'Fiyat',
                        maxlength: 9,
                        required: true,
                    },
                ],
                buttons: [
                    {
                        text: "Ekle",
                        class: "green",
                        value: true
                    },
                    {
                        text: "Vazgeç",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result, cb) => {
                if (!result) return;
                if (result.price < 0 || isNaN(result.price)) return;
                if (result) {
                    result.category = this.selectedNav.id;
                }

                this.$store.dispatch('management/addVehicle', result)
            });
        },
        addCategory() {
            this.$store.dispatch('showModal', {
                title: 'Kategori Ekle',
                content: 'input',
                placeholder: 'Kategori Adı',
                maxlength: 15,
                buttons: [
                    {
                        text: "Ekle",
                        class: "green",
                        value: true
                    },
                    {
                        text: "Vazgeç",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result) => {
                if (!result) return;
                result = result.trim();
                if (result.length > 15) return;
                if (result.length < 2) return;
                if (result.replace(/ /g, '').length < 1) return;
                const id = result.toLowerCase().replace(/ /g, '-');

                this.$store.dispatch('management/addCategory', {
                    name: result,
                    id: id,
                }).then((nav) => {
                    if (!nav) return;
                    this.selectNav(nav);
                });
            });
        },
        removeCategory() {
            this.$store.dispatch('showModal', {
                title: 'Bu kategoriyi iptal etmek istediğinizden emin misiniz?',
                content: 'text',
                text: this.selectedNav.name,
                buttons: [
                    {
                        text: "Kaldır",
                        class: "red",
                        value: this.selectedNav.id
                    },
                    {
                        text: "İptal Et",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result) => {
                if (!result) return;

                this.$store.dispatch('management/removeCategory', result).then(() => {
                    this.selectNav(this.navItems[0]);
                });
            });
        },
        vehiclesListWheel(e) {
            if (e.shiftKey) {
                return
            }
            this.$refs.vehiclesList.scrollLeft += e.deltaY / 1.7;
        },
        deleteVehicle(vehicle) {
            this.$store.dispatch('showModal', {
                title: 'Aracı silmek istediğinizden emin misiniz?',
                content: 'text',
                text: vehicle.brand + ' ' + vehicle.name,
                buttons: [
                    {
                        text: "Evet",
                        class: "red",
                        value: vehicle
                    },
                    {
                        text: "Hayır",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result) => {
                if (!result) return;
                if (result) {
                    result.category = this.selectedNav.id;
                    result.id = vehicle.id;
                }
                this.$store.dispatch('management/deleteVehicle', result);
            });
        },
        editVehicle(vehicle) {
            this.$store.dispatch('showModal', {
                title: 'Aracı Düzenle',
                content: 'form',
                type: 'new-vehicle',
                fields: [
                    {
                        name: 'brand',
                        placeholder: 'Araç Üreticisi',
                        maxlength: 35,
                        required: true,
                        value: vehicle.brand,
                    },
                    {
                        name: 'name',
                        placeholder: 'Araç Modeli',
                        maxlength: 35,
                        required: true,
                        value: vehicle.name,
                    },
                    {
                        name: 'hash',
                        placeholder: 'Araç Seri No (-hash)',
                        maxlength: 35,
                        required: true,
                        value: vehicle.hash,
                    },
                    {
                        name: 'vehImage',
                        placeholder: 'Araç Resmi (PNG)',
                        required: true,
                        value: vehicle.vehImage,
                    },
                    {
                        name: 'brandImage',
                        placeholder: 'Marka Resmi (PNG)',
                        required: true,
                        value: vehicle.brandImage,
                    },
                    {
                        name: 'price',
                        placeholder: 'Fiyat',
                        maxlength: 15,
                        required: true,
                        value: vehicle.price,
                    },
                ],
                buttons: [
                    {
                        text: "Kaydet",
                        class: "green",
                        value: true
                    },
                    {
                        text: "Vazgeç",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result, cb) => {
                if (result) {
                    result.category = this.selectedNav.id;
                    result.id = vehicle.id;
                }
                this.$store.dispatch('management/editVehicle', result)
            });
        },
        addEmployee() {
            this.$store.dispatch('showModal', {
                title: '',
                content: 'input',
                placeholder: 'ID',
                maxlength: 15,
                buttons: [
                    {
                        text: "Ekle",
                        class: "green",
                        value: true
                    },
                    {
                        text: "Vazgeç",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result) => {
                if (!result) return;
                result = result.trim();
                if (isNaN(result)) return;

                this.$store.dispatch('management/addEmployee', result);
            });
        },
        editSalary(employee) {
            this.$store.dispatch('showModal', {
                title: employee.name + "' Kişisinin Maaşını Düzenle",
                content: 'input',
                placeholder: 'New Salary',
                maxlength: 15,
                buttons: [
                    {
                        text: "Kaydet",
                        class: "green",
                        value: true
                    },
                    {
                        text: "Vazgeç",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result) => {
                if (!result) return;
                result = result.trim();
                if (isNaN(result)) return;

                this.$store.dispatch('management/editSalary', {
                    id: employee.id,
                    salary: result,
                });
            });
        },
        fireEmployee(employee) {
            this.$store.dispatch('showModal', {
                title: employee.name + 'kişisini kovmak istediğinizden emin misiniz?',
                content: 'text',
                text: 'This action cannot be undone',
                buttons: [
                    {
                        text: "Fire",
                        class: "red",
                        value: employee.id
                    },
                    {
                        text: "Cancel",
                        class: "gray",
                        value: false
                    }
                ]
            }).then((result) => {
                if (!result) return;

                this.$store.dispatch('management/fireEmployee', result);
            });
        },
        payEmployee(employee) {
            this.$store.dispatch('showModal', {
                title: 'Ödeme yap: ' + employee.name + " ?",
                content: 'text',
                text: 'Bu eylem geri alınamaz.',
                buttons: [
                    {
                        text: "Öde",
                        class: "green",
                        value: employee.id
                    },
                    {
                        text: "İptal",
                        class: "gray",
                        value: false
                    },
                ],
            }).then((result) => {
                if (!result) return;

                this.$store.dispatch('management/payEmployee', result);
            });
        },
        transferBusiness() {
            this.$store.dispatch('showModal', {
                title: 'İşletmeyi Devret',
                content: 'input',
                placeholder: 'ID',
                maxlength: 15,
                buttons: [
                    {
                        text: "Devret",
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
                result = result.trim();
                if (isNaN(result)) return;

                this.$store.dispatch('management/transferBusiness', result);
            });
        },
        depositMoney() {
            const amount = this.vaultAmount
            this.$store.dispatch('showModal', {
                title: 'Para yatır',
                content: 'text',
                text: `İşletmenin kasasına $${amount} miktarında para aktarmak istediğinizden emin misiniz?`,
                buttons: [
                    {
                        text: "Yatır",
                        class: "green",
                        value: true
                    },
                    {
                        text: "İptal",
                        class: "gray",
                        value: false
                    },
                ],
            }).then((result) => {
                if (!result) return;
                this.$store.dispatch('management/depositMoney', amount);
            });
        },
        withdrawMoney() {
            const amount = this.vaultAmount
            this.$store.dispatch('showModal', {
                title: 'Para Çek',
                content: 'text',
                text: `Şirket kasasından $${amount} miktarında para çek?`,
                buttons: [
                    {
                        text: "Para Çek",
                        class: "green",
                        value: true
                    },
                    {
                        text: "İptal Et",
                        class: "gray",
                        value: false
                    },
                ],
            }).then((result) => {
                if (!result) return;
                this.$store.dispatch('management/withdrawMoney', amount);
            });
        },
        onBrandLogoError(event) {
            event.target.src = './assets/brand-form-placeholder.png';
        },
        onVehicleImageError(event) {
            event.target.src = './assets/vehicle-form-placeholder.png';
        }
    },
    computed: {
        ...Vuex.mapState({
            navItems: state => state.showroom.navItems,
            vehicles: state => state.showroom.vehiclesList,
            employees: state => state.management.employees,
            vaultMoney: state => state.management.money,
            player: state => state.player,
            logs: state => state.management.logs,
        }),
        blurredVaultMoney() {
            // comma numbers anad replace numbers with *'s
            return this.vaultMoney.toString()
        },
        filteredLogs() {
            return this.logs.filter(log => {
                for (const key in log) {
                    if (log[key].text.toString().toLowerCase().includes(this.logsSearchInput.toLowerCase())) {
                        return true;
                    }
                }
                // return log.text.toLowerCase().includes(this.logsSearchInput.toLowerCase());
            });
        },
        filteredVehicles() {
            // return this.vehicles[this.selectedNav.id].filter((veh) =>{
            //     return veh.name.toLowerCase().includes(this.searchInput.toLowerCase()) || veh.brand.toLowerCase().includes(this.searchInput.toLowerCase())
            // })

            if (!this.searchInput) return false;
            var retval = []
            for (const category in this.vehicles) {
                var vehicles = this.vehicles[category]
                retval = [...vehicles, ...retval]
            }
            return retval.filter((veh) => {
                return veh.name.toLowerCase().includes(this.searchInput.toLowerCase()) || veh.brand.toLowerCase().includes(this.searchInput.toLowerCase())
            })
        }
    },
    mounted() {
        if (this.navItems?.length > 0) {
            this.selectNav(this.navItems[0]);
        }
    },
}