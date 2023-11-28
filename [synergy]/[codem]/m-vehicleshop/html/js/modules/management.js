const module = {
    namespaced: true,
    state: {
        employees: [],
        money: 0
    },
    actions: {
        addCategory({ state, dispatch }, { name, id }) {
            return dispatch('showroom/addCategory', { name, id }, { root: true });
        },
        removeCategory({ state, dispatch }, id) {
            return dispatch('showroom/removeCategory', id, { root: true });
        },
        addVehicle({ state, dispatch }, vehicle) {
            return dispatch('showroom/addVehicle', vehicle, { root: true });
        },
        editVehicle({ state, dispatch }, vehicle) {
            return dispatch('showroom/editVehicle', vehicle, { root: true });
        },
        deleteVehicle({ state, dispatch }, vehicle) {
            return dispatch('showroom/deleteVehicle', vehicle, { root: true });
        },
        async addEmployee({ state }, playerId) {
            const player = await postNUI('addEmployee', { playerId });
            if (player) {
                state.employees.push({
                    id: player.id,
                    name: player.name,
                    salary: player.salary,
                    access: []
                });
            }
        },
        async fireEmployee({ state }, id) {
            const success = await postNUI('fireEmployee', { id });
            if (!success) {
                return;
            }
            state.employees = state.employees.filter(employee => employee.id !== id);
        },
        async payEmployee({ state }, id) {
            const success = await postNUI('payEmployee', { id });
            return success
        },
        async editSalary({ state }, { id, salary }) {
            const success = await postNUI('editSalary', { id, salary });
            if (!success) {
                return;
            }
            const employee = state.employees.find(employee => employee.id === id);
            if (employee) {
                employee.salary = salary;
            }
        },
        async depositMoney({ state }, amount) {
            const success = await postNUI('depositMoney', { amount });
            if (!success || isNaN(amount)) {
                return;
            }
            state.money += Number(amount);
        },
        async withdrawMoney({ state }, amount) {
            const success = await postNUI('withdrawMoney', { amount });
            if (!success || isNaN(amount)) {
                return;
            }
            state.money -= Number(amount);
        },
        transferBusiness({ state }, id) {
            return postNUI('transferBusiness', { id });
        },
        editCategoryName({ state }, { id, name }) {
            return postNUI('editCategoryName', { id, name });
        },
    },
}

window.addEventListener('message', (event) => {
    const data = event.data;
    
});

export default module