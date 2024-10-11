import {getConfig} from "@/api/shopping_mall";

export default {
    namespace: 'shopping_mall',
    state: {
        configs: [],
        isLoadingConfig: false,
    },

    mutations: {
        SET_CONFIGS(state: any, configs: []) {
            state.configs = configs;
        },

        SET_LOADING(state: any) {
            state.isLoadingConfig = !state.isLoadingConfig
        }
    },

    actions: {

        loadConfig({commit}: { commit: any }): Promise<void> {
            return new Promise<void>((resolve, reject) => {
                getConfig().then((response: any) => {
                    commit('SET_CONFIGS', response.data);
                    resolve();
                }).catch((error: any) => {
                    reject(error);
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
        }
    }
};
