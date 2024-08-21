import { createI18n } from 'vue-i18n';

function loadLocaleMessages(): { [key: string]: any } {
    const locales = require.context(
        "./locales",
        true,
        /[A-Za-z0-9-_,\s]+\.json$/i
    );
    const messages: { [key: string]: any } = {}; // Khai báo kiểu cho `messages`

    locales.keys().forEach((key: string) => {
        const matched = key.match(/([A-Za-z0-9-_]+)\./i);
        if (matched && matched.length > 1) {
            const locale = matched[1];
            messages[locale] = locales(key).default || locales(key);
        }
    });

    return messages;
}

// Create Vue I18n instance
const i18n = createI18n({
    locale: process.env.VUE_APP_I18N_LOCALE || "vie", // Default locale
    fallbackLocale: process.env.VUE_APP_I18N_LOCALE || "vie", // Fallback locale
    messages: loadLocaleMessages(),
});

export default i18n;
