import {ToastSeverity} from 'primevue/api';
import i18n from "@/i18n";

export default {
    state: {
        toast: null,
    },
    mutations: {
        SET_TOAST(state: any, toast: any) {
            state.toast = toast;
        }
    },
    actions: {
        setToast({commit}: { commit: any }, payload: { toast: any }) {
            const {toast} = payload;
            commit('SET_TOAST', toast);
        },

        handlerToast({state}: { state: any }, {severity, summary, detail, life} =
            {severity: ToastSeverity.SUCCESS, summary: i18n.global.messages[i18n.global.locale].notification, detail: i18n.global.messages[i18n.global.locale].success, life: 3000}) {
            state.toast.add({severity: severity, summary: summary, detail: detail, life: life});
        },

        handlerAddSuccess({state}: { state: any }, {severity, summary, detail, life} =
            {severity: ToastSeverity.SUCCESS, summary: i18n.global.messages[i18n.global.locale].notification, detail: i18n.global.messages[i18n.global.locale].more_success, life: 3000}) {
            state.toast.add({severity: severity, summary: summary, detail: detail, life: life});
        },
    },
    getters: {},
};
