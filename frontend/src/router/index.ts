import {createRouter, createWebHistory, RouteRecordRaw} from 'vue-router'

const routes: Array<RouteRecordRaw> = [
    {
        path: '/',
        name: 'home',
        components: {
            home: () => import('@/views/user/HomeView.vue'),
        },
        children: [
            {
                path: '',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    menu: () => import('@/views/user/components/MenuSetting.vue'),
                    content: () => import('@/views/user/components/OrderDetail.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
            {
                path: '/setting',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    menu: () => import('@/views/user/components/MenuSetting.vue'),
                    content: () => import('@/views/user/components/OrderHistory.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
        ],
    },
    {
        path: '/admin',
        name: 'admin',
        components: {
            home: () => import('@/views/admin/HomeView.vue'),
        },
        children: [
            {
                path: '',
                components: {
                    header: () => import('@/views/admin/components/Header.vue'),
                    content: () => import('@/views/admin/components/AddProduct.vue'),
                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                },
            },
            {
                path: 'setting',
                components: {
                    header: () => import('@/views/admin/components/Header.vue'),
                    content: () => import('@/views/admin/components/ProductList.vue'),
                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                },
            },
        ],
    },
    {
        path: '/about',
        name: 'about',
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () => import(/* webpackChunkName: "about" */ '../views/AboutView.vue')
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router
