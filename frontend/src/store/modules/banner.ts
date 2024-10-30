import {addBanner, getBanner} from "@/api/banner";
import {TIMEOUT} from "@/common/enums";

export default {
    namespace: 'banner',
    state: {
        banners: [],
        isLoadingBanner: false,
        isLoadingAddBanner: false,
        banner: null,
    },

    mutations: {
        SET_BANNERS(state: any, banners: []) {
            state.banners = banners;
        },

        SET_LOADING(state: any) {
            state.isLoadingBanner = !state.isLoadingBanner
        },

        SET_LOADING_ADD(state: any) {
            state.isLoadingAddBanner = !state.isLoadingAddBanner
        },

        SET_BANNER(state: any, banner: any) {
            state.banner = banner;
        }
    },

    actions: {

        loadBanner({commit}: { commit: any }, payload: { isUse: any } = {isUse: ''}): Promise<void> {
            commit('SET_LOADING');
            return new Promise<void>((resolve, reject) => {
                const {isUse} = payload;
                getBanner(isUse).then((response: any) => {
                    commit('SET_BANNERS', response.data);
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

        addBanner({commit}: { commit: any }, payload: { data: {} } = {data: {}}): Promise<void> {
            commit('SET_LOADING_ADD');
            return new Promise<void>((resolve, reject) => {
                const {data} = payload;
                addBanner(data).then((response: any) => {
                    commit('SET_BANNER', response.data.data);
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
        banners(state: any) {
            return state.banners
        },

        isLoadingBanner(state: any) {
            return state.isLoadingBanner;
        },

        isLoadingAddBanner(state: any) {
            return state.isLoadingAddBanner
        },

        banner(state: any) {
            return state.banner
        }
    }
};
