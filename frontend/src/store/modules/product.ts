import {getProduct, getProductWithFilter, getProductById} from "@/api/product";
import {TIMEOUT} from "@/common/enums";

export default {
    namespace: 'product',
    state: {
        products: [],
        product: {
            medias: [],
            productProperties: [],
            propertyTypes: [],
        },
        isLoadingProduct: false,
        filter: null,
    },
    mutations: {
        SET_PRODUCTS(state: any, products: []) {
            state.products = products;
        },

        SET_PRODUCT(state: any, product: any) {
            state.product = product;
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
                const {filter} = payload;
                getProduct(filter).then((response: any) => {
                    commit('SET_PRODUCTS', response.data);
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

        getProductWithFilter({commit}: { commit: any }, payload: { filters: {} } = {filters: {}}): Promise<void> {
            commit('SET_LOADING');
            return new Promise<void>((resolve, reject) => {
                const {filters} = payload;
                getProductWithFilter(filters).then((response: any) => {
                    commit('SET_PRODUCTS', response);
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

        getProductById({commit}: { commit: any }, payload: { id: BigInt }): Promise<void> {
            commit('SET_LOADING');
            return new Promise<void>((resolve, reject) => {
                getProductById(payload.id).then((response: any) => {
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
        }
    },

    getters: {
        products(state: any) {
            return state.products
        },

        product(state: any) {
            return state.product
        },

        isLoadingProduct(state: any) {
            return state.isLoadingProduct;
        }
    }
};
