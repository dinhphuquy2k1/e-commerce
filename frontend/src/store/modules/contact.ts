import {getContact} from "@/api/contact";
import {TIMEOUT} from "@/common/enums";

export default {
    state: {
        contacts: [],
        isLoadingContact: true,
    },
    mutations: {
        SET_CONTACTS(state: any, contacts: []) {
            state.contacts = contacts;
        },

        SET_LOADING(state: any) {
            state.isLoadingContact = !state.isLoadingContact
        },
    },
    actions: {
        /**
         * Hàm lấy toàn bộ danh sách đề thi
         * DPQuy - 19/04/2022
         **/
        loadContact({commit}: { commit: any }): Promise<void> {
            commit('SET_LOADING');
            return new Promise<void>((resolve, reject) => {
                getContact().then((response: any) => {
                    commit('SET_CONTACTS', response.data);
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
        contacts(state: any, {commit}: { commit: Function }) {
            return state.contacts
        },

        isLoadingContact(state: any, {commit}: { commit: Function }) {
            return state.isLoadingContact;
        },
    }
};
