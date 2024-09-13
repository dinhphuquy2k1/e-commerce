import {getBrand} from "@/api/brand";

export default {
    state: {
        brands: [],
    },
    mutations: {
        SET_BRAND(state: any, brands: []) {
            state.brands = brands;
        }
    },
    actions: {
        /**
         * Hàm lấy toàn bộ danh sách đề thi
         * DPQuy - 19/04/2022
         **/
        loadBrand({commit}: { commit: any }): Promise<void> {
            return new Promise<void>((resolve, reject) => {
                getBrand().then((response: any) => {
                    commit('SET_BRAND', response.data);
                    resolve();
                }).catch((error: any) => {
                    reject(error);
                });
            });
        },
    },

    getters: {
        getBrand(state: any, {commit}: { commit: Function }) {
            return state.brands
        },
    }
};
