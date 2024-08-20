import {getOrder} from "@/api/order";
import {TIMEOUT} from "@/common/enums";

export default {
    namespace: 'order',
    state: {
        orders: [],
        isLoadingOrder: false,
        filter: null,
    },
    mutations: {
        SET_ORDER(state: any, orders: []) {
            state.orders = orders;
        },

        SET_LOADING(state: any) {
            state.isLoadingOrder = !state.isLoadingOrder
        }
    },

    actions: {
        /**
         * Hàm lấy toàn bộ danh sách đề thi
         * DPQuy - 19/04/2022
         **/
        loadOrder({commit}: { commit: any }, payload: { filter: {} } = {filter: {}}): Promise<void> {
            commit('SET_LOADING');
            return new Promise<void>((resolve, reject) => {
                const {filter} = payload;
                getOrder(filter).then((response: any) => {
                    commit('SET_ORDER', response.data);
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
        orders(state: any, {commit}: { commit: Function }) {
            return state.orders
        },

        isLoadingOrder(state: any, {commit}: { commit: Function }) {
            return state.isLoadingOrder;
        }
    }
};
