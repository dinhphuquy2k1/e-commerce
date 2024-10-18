<template>
  <div class="ms-dashboard-settings">
    <PanelMenu v-model:expanded-keys="expandedKeys" :model="menus" multiple>
      <template #item="{ item }">
        <router-link v-if="item.route && item.items.length===0" :to="item.route"
                     class="ma-navbar-parent d-flex align-items-center">
          <div class="d-flex flex-grow-1 align-items-center gap-1 cursor-pointer menu-item">
            <span :class="[item.icon, 'text-primary']"/>
            <span :class="['ml-2', { 'font-semibold': item.items }]">{{ item.label }}</span>
          </div>
        </router-link>
        <div v-else class="ma-navbar-parent d-flex align-items-center"
             :class="{'p-submenu-icon': item.items.length > 0}">
          <div class="menu-item align-items-center gap-1 flex-grow-1 d-flex">
            <div class="icon" :class="[item.icon]"></div>
            <div class="flex-grow-1">{{ item.label }}</div>
            <span v-if="item.items" class="pi arrow-right pi-angle-up text-primary ml-auto"/>
          </div>
        </div>
      </template>
    </PanelMenu>

    <div class="ms-dashboard-menu-quick_icon d-none">
      <div class="toggle" @click="isToggle = !isToggle">
        <div class="img" :class="{'img-show': isToggle, 'img-hide': !isToggle}"></div>
      </div>
    </div>
    <Sidebar v-model:visible="isToggle" header="Sidebar">
      <PanelMenu v-model:expanded-keys="expandedKeys" :model="menus" multiple>
        <template #item="{ item }">
          <router-link v-if="item.route && item.items.length===0" :to="item.route"
                       class="ma-navbar-parent d-flex align-items-center">
            <div class="d-flex flex-grow-1 align-items-center gap-1 cursor-pointer menu-item">
              <span :class="[item.icon, 'text-primary']"/>
              <span :class="['ml-2', { 'font-semibold': item.items }]">{{ item.label }}</span>
            </div>
          </router-link>
          <div v-else class="ma-navbar-parent d-flex align-items-center"
               :class="{'p-submenu-icon': item.items.length > 0}">
            <div class="menu-item align-items-center gap-1 flex-grow-1 d-flex">
              <div class="icon" :class="[item.icon]"></div>
              <div class="flex-grow-1">{{ item.label }}</div>
              <span v-if="item.items" class="pi arrow-right pi-angle-up text-primary ml-auto"/>
            </div>
          </div>
        </template>
      </PanelMenu>
    </Sidebar>
  </div>
</template>

<script>
import PanelMenu from 'primevue/panelmenu';
import Sidebar from 'primevue/sidebar';

export default {
  components: {
    PanelMenu,
    Sidebar,
  },
  data() {
    return {
      expandedKeys: {},
      isToggle: false,
      menus: [
        {
          label: 'Tổng quan',
          icon: 'pi pi-plus',
          route: '/dashboard',
          items: [],
        },
        {
          label: 'Lịch sử đơn hàng',
          icon: 'pi pi-search',
          route: '/dashboard/order-history',
          items: [],
        },
        {
          label: 'Theo dõi đơn hàng',
          icon: 'pi pi-search',
          route: '/dashboard/track-order',
          items: [],
        },
        {
          label: 'Giỏ hàng',
          icon: 'pi pi-search',
          route: '/dashboard/shop-cart',
          items: [],
        },
        {
          label: 'Danh sách yêu thích',
          icon: 'pi pi-search',
          route: '/setting',
          items: [],
        },
        {
          label: 'So sánh',
          icon: 'pi pi-search',
          route: '/setting',
          items: [],
        },
        {
          label: 'Lịch sử duyệt web',
          icon: 'pi pi-search',
          route: '/dashboard/browsing-history',
          items: [],
        },
        {
          label: 'Cài đặt',
          icon: 'pi pi-search',
          route: '/dashboard/settings',
          items: [],
        },
        {
          label: 'Đăng xuất',
          icon: 'pi pi-search',
          route: '/setting',
          items: [],
        },
      ]
    };
  }
}
</script>

<style lang="scss">
.ms-dashboard-settings {
  box-shadow: 0px 8px 40px 0px rgba(0, 0, 0, 0.08);
}

.p-sidebar-mask {
  z-index: 100001 !important;
}

.ms-dashboard-settings, .p-sidebar-mask {
  .ms-dashboard-menu-quick_icon {
    position: fixed;
    left: 0;
    top: 50%;
    transform: translateY(-50%) !important;
    z-index: 1000;
    display: flex;
    flex-direction: column;
    justify-content: right;
    align-items: flex-end;

    .toggle {
      width: 20px;
      height: 40px;
      border-radius: 0 4px 4px 0;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      background-color: #2680eb;

      .img {
        position: absolute;
        top: 15px;
        left: 10px;
        background: url('@public/assets/icons/ic_toggle_quick.f21c7ef6.svg') no-repeat;
        width: 4px;
        height: 8px;
        transition: .4s ease;
      }

      .img-show {
        transform: rotate(0deg);
      }

    }

    .list-icon {
      position: absolute;
      list-style: none;
      margin: 0;
      padding: 0;
      top: 18px;
      right: 0;
      transition: width .4s ease;

      .icon {
        width: 40px;
        height: 42px;
        border-radius: 8px 0 0 8px;
        background-color: #2680eb;
        margin: 4px 0;
        cursor: pointer;
      }

      .live-chat {
        background-image: url('@public/assets/icons/ic_live_chat_quick.7f07c188.svg');
        background-repeat: no-repeat;
        background-position: 10px 10px;
      }
    }
  }

  .p-panelmenu .p-panelmenu-header .p-panelmenu-header-content {
    border-radius: unset;
  }

  .p-panelmenu .p-panelmenu-content .p-menuitem:not(.p-highlight):not(.p-disabled).p-focus > .p-menuitem-content {
    background: unset;
  }

  .p-panelmenu .p-panelmenu-content .p-menuitem > .p-menuitem-content {
    color: #000;
  }

  .p-panelmenu .p-panelmenu-content .p-menuitem:not(.p-highlight):not(.p-disabled) > .p-menuitem-content:hover {
    background: #fff;
  }

  .p-panelmenu .p-panelmenu-header .p-panelmenu-header-content {
    color: #000;
  }

  .p-panelmenu .p-panelmenu-content {
    border: unset;
    padding: unset;

    .p-submenu-list {
      .p-menuitem {
        .menu-item {
          span {
            padding-left: 10px;
          }
        }
      }
    }
  }


  .p-panelmenu {
    min-width: 160px;

    a:hover {

    }

    ol, ul, dl {
      margin: unset;
      padding-left: 1.5rem;
    }

    .p-menuitem.p-focus {
      background: #fff;
    }

    .p-panelmenu-panel {
      margin: unset;

      .p-panelmenu-header {
        .p-panelmenu-header-content {
          background: #fff;
          border: unset;

          .p-submenu-icon {
            .menu-item {
              .pi-angle-up {
                transition-duration: .4s;
              }
            }
          }
        }

        & {
          .p-submenu-icon {
            .menu-item {
              .pi-angle-up {
                background: url('@public/assets/icons/ic_arrow_black_right.c6cd6189.svg');
                height: 24px;
                width: 24px;
                transform: rotate(90deg);
              }
            }
          }
        }

        &[aria-expanded="true"] {
          .p-submenu-icon {
            .menu-item {
              .pi-angle-up {
                background: url('@public/assets/icons/ic_arrow_black_right.c6cd6189.svg');
                height: 24px;
                width: 24px;
                transform: rotate(270deg);
              }
            }
          }
        }
      }
    }

    .menu-item {
      padding: 12px;
      margin: 8px 8px 0 8px;
      border-radius: 8px;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      color: #000;

      span {
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 100%;
      }

      &:hover {
        background: #eff7ff;
        color: #ff6d00;
        cursor: pointer;
      }
    }

    .router-link-exact-active {
      .menu-item {
        background: #fbe9e7;
        color: #ff6d00;
      }

      &.ma-navbar-parent {
        font-weight: 500;
        display: block;
        color: #ff6d00;
      }
    }

  }
}

@media (max-width: 768px) {
  .ms-dashboard-settings {

    .p-panelmenu {
      display: none;
    }

    .ms-dashboard-menu-quick_icon {
      display: flex !important;
    }
  }
}
</style>
