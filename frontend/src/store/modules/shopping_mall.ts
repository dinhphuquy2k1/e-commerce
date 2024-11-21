import {addConfig, getConfig} from "@/api/shopping_mall";
import {TIMEOUT} from "@/common/enums";

export default {
    namespace: 'shopping_mall',
    state: {
        configs: [],
        isLoadingConfig: false,
        isLoadingAddConfig: false,
        config: null,
    },

    mutations: {
        SET_CONFIGS(state: any, configs: []) {
            state.configs = configs;
        },

        SET_LOADING(state: any) {
            state.isLoadingConfig = !state.isLoadingConfig
        },

        SET_LOADING_ADD(state: any) {
            state.isLoadingAddConfig = !state.isLoadingAddConfig
        },

        SET_CONFIG(state: any, config: any) {
            state.config = config;
        }
    },

    actions: {

        loadConfig({commit}: { commit: any }, payload: { isUse: any } = {isUse: ''}): Promise<void> {
            commit('SET_LOADING');
            return new Promise<void>((resolve, reject) => {
                const {isUse} = payload;
                getConfig(isUse).then((response: any) => {
                    commit('SET_CONFIGS', response.data);
                    resolve();
                }).catch((error: any) => {
                    reject(error);
                }).finally(() => {
                    setTimeout(() => {
                        commit('SET_LOADING');
                    }, TIMEOUT.LOADING)
                });
            });
        },

        addConfig({commit}: { commit: any }, payload: { data: {} } = {data: {}}): Promise<void> {
            commit('SET_LOADING_ADD');
            return new Promise<void>((resolve, reject) => {
                const {data} = payload;
                addConfig(data).then((response: any) => {
                    commit('SET_CONFIG', response.data.data);
                    resolve();
                }).catch((error: any) => {
                    reject(error);
                }).finally(() => {
                    setTimeout(() => {
                        commit('SET_LOADING_ADD');
                    }, TIMEOUT.LOADING)
                });
            });
        },
    },

    getters: {
        configs(state: any) {
            return state.configs
        },

        isLoadingConfig(state: any) {
            return state.isLoadingConfig;
        },

        isLoadingAddConfig(state: any) {
            return state.isLoadingAddConfig
        },

        config(state: any) {
            return state.config
        }
    }
};
