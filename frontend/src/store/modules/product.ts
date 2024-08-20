import {getProduct} from "@/api/product";
import {TIMEOUT} from "@/common/enums";

export default {
    namespace: 'product',
    state: {
        products: [],
        isLoadingProduct: false,
        filter: null,
    },
    mutations: {
        SET_PRODUCT(state: any, products: []) {
            state.products = products;
        },

        SET_LOADING(state: any) {
            state.isLoadingProduct = !state.isLoadingProduct
        }
    },
    actions: {
        /**
         * Hàm lấy toàn bộ danh sách đề thi
         * DPQuy - 19/04/2022
         **/
        loadProduct({commit}: { commit: any }, payload: { filter: {} } = {filter: {}}): Promise<void> {
            commit('SET_LOADING');
            return new Promise<void>((resolve, reject) => {
                const { filter } = payload;
                getProduct(filter).then((response: any) => {
                    commit('SET_PRODUCT', response.data);
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
    },

    getters: {
        products(state: any, {commit}: { commit: Function }) {
            return state.products
        },

        isLoadingProduct(state: any, {commit}: { commit: Function }) {
            return state.isLoadingProduct;
        }
    }
};
