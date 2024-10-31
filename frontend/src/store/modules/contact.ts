import {getContact} from "@/api/contact";

export default {
    state: {
        contacts: [],
    },
    mutations: {
        SET_CONTACTS(state: any, contacts: []) {
            state.contacts = contacts;
        }
    },
    actions: {
        /**
         * Hàm lấy toàn bộ danh sách đề thi
         * DPQuy - 19/04/2022
         **/
        loadContact({commit}: { commit: any }): Promise<void> {
            return new Promise<void>((resolve, reject) => {
                getContact().then((response: any) => {
                    commit('SET_CONTACTS', response.data);
                    resolve();
                }).catch((error: any) => {
                    reject(error);
                });
            });
        },
    },

    getters: {
        contacts(state: any, {commit}: { commit: Function }) {
            return state.contacts
        },
    }
};
