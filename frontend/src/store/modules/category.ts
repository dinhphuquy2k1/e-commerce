import {getCategory} from "@/api/category";

export default {
    state: {
        categories: [],
    },
    mutations: {
        SET_CATEGORIES(state: any, categories: []) {
            state.categories = categories;
        }
    },
    actions: {
        /**
         * Hàm lấy toàn bộ danh sách đề thi
         * DPQuy - 19/04/2022
         **/
        loadCategory({commit}: { commit: any }): Promise<void> {
            return new Promise<void>((resolve, reject) => {
                getCategory().then((response: any) => {
                    commit('SET_CATEGORIES', response.data);
                    resolve();
                }).catch((error: any) => {
                    reject(error);
                });
            });
        },
    },

    getters: {
        getCategory(state: any, {commit}: { commit: Function }) {
            return state.categories
        },
    }
};
