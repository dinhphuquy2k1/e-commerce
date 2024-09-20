import {createRouter, createWebHistory, RouteRecordRaw} from 'vue-router'

const routes: Array<RouteRecordRaw> = [
    {
        path: '/',
        components: {
            home: () => import('@/views/user/HomeView.vue'),
        },
        children: [
            {
                path: '',
                name: 'home',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    content: () => import('@/views/user/components/Home.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
            {
                path: '/setting',
                name: 'user_setting',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    menu: () => import('@/views/user/components/dashboard/MenuSetting.vue'),
                    content: () => import('@/views/user/components/dashboard/OrderHistory.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
            {
                path: '/product/detail',
                name: 'product_detail',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    content: () => import('@/views/user/components/ProductDetail.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
            {
                path: '/shop/gird',
                name: 'shop_gird',
                components: {
                    header: () => import('@/views/user/components/Header.vue'),
                    content: () => import('@/views/user/components/gird/ShopGrid.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
            },
            {
                path: 'dashboard',
                components: {
                    content: () => import('@/views/user/components/dashboard/Settings.vue'),
                    header: () => import('@/views/user/components/Header.vue'),
                    footer: () => import('@/views/user/components/Footer.vue'),
                },
                children: [
                    {
                        path: '',
                        components: {
                            menu: () => import('@/views/user/components/dashboard/MenuSetting.vue'),
                            content: () => import('@/views/user/components/dashboard/Dashboard.vue'),
                        }
                    },
                    {
                        path: 'order-history',
                        components: {
                            menu: () => import('@/views/user/components/dashboard/MenuSetting.vue'),
                            content: () => import('@/views/user/components/dashboard/OrderHistory.vue'),
                        }
                    },
                    {
                        path: 'settings',
                        components: {
                            menu: () => import('@/views/user/components/dashboard/MenuSetting.vue'),
                            content: () => import('@/views/user/components/dashboard/AccountSetting.vue'),
                        },
                    },
                    {
                        path: 'wish-list',
                        components: {
                            menu: () => import('@/views/user/components/dashboard/MenuSetting.vue'),
                            content: () => import('@/views/user/components/dashboard/WishList.vue'),
                        },
                    },
                    {
                        path: 'shop-cart',
                        components: {
                            menu: () => import('@/views/user/components/dashboard/MenuSetting.vue'),
                            content: () => import('@/views/user/components/dashboard/ShoppingCart.vue'),
                        },
                    },
                    {
                        path: 'browsing-history',
                        components: {
                            menu: () => import('@/views/user/components/dashboard/MenuSetting.vue'),
                            content: () => import('@/views/user/components/BrowsingHistory.vue'),
                        },
                    },

                ],
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
                path: 'homepage',
                components: {
                    header: () => import('@/views/admin/components/Header.vue'),
                    content: () => import('@/views/admin/components/AddProduct.vue'),
                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                },
            },
            {
                path: 'dashboard',
                children: [
                    {
                        path: '',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'order',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/ProductList.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'product',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                        }
                    },
                ],
            },
            {
                path: 'product',
                children: [
                    {
                        path: '',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                        }
                    },
                    {
                        path: 'manage',
                        name: 'manage_product',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/ProductList.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'create',
                        name: 'add_product',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'batch',
                        children: [
                            {
                                path: '',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/BatchTool.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                },
                            },
                            {
                                path: 'mass-listing',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/MassListing.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                },
                            },
                            {
                                path: 'sizes',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/SizeList.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                },
                            },
                            {
                                path: 'edit-images',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/BatchEditImage.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                },
                            },
                        ],
                    },
                ],
            },
            {
                path: 'order',
                children: [
                    {
                        path: 'manage',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/OrderManager.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'cancellation',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/OrderManager.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    },
                    {
                        path: 'return',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/OrderManager.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        }
                    }
                ],
            },
            {
                path: 'profile',
                children: [
                    {
                        path: 'seller-profile',
                        components: {
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/SellerProfile.vue'),
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                        },
                    },
                    {
                        path: 'account-setting',
                        children: [
                            {
                                path: '',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'user-management',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/UserManagement.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'payment',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/Payment.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'qualification',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'tax-infomation',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'warehouse',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/WareHouse.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'holiday-mode',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'delegation-login',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                            {
                                path: 'message-setting',
                                components: {
                                    header: () => import('@/views/admin/components/Header.vue'),
                                    content: () => import('@/views/admin/components/AccountSettings.vue'),
                                    navbar: () => import('@/views/admin/components/NavBar.vue'),
                                }
                            },
                        ]
                    }
                ],
            },
            {
                path: 'chat',
                children: [
                    {
                        path: '',
                        components: {
                            navbar: () => import('@/views/admin/components/NavBar.vue'),
                            header: () => import('@/views/admin/components/Header.vue'),
                            content: () => import('@/views/admin/components/AddProduct.vue'),
                        }
                    },
                ]
            }
        ],
    },
    {
        path: '/:pathMatch(.*)*',
        name: 'not-found',
        components: {
            home: () => import('@/views/user/HomeView.vue'),
        },
        children: [
            {
                path: '',
                components: {
                    content: () => import('@/views/user/components/404.vue'),
                },
            },
        ]
    },
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router
