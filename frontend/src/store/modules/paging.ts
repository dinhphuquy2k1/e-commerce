export default {
    state: {
        numberOfRecords: [10, 20, 50, 100],
        filterDefault: {
            limit: 10,
            page: 1,
        }
    },
    mutations: {},
    actions: {},

    getters: {
        getNUmberOfRecords(state: any, {commit}: { commit: Function }) {
            return state.numberOfRecords
        },
        getNumberDefault(state: any, {commit}: { commit: Function }) {
            return state.filterDefault.limit;
        },
        getFilterDefault(state: any, {commit}: { commit: Function }) {
            return state.filterDefault;
        },
    }
};
