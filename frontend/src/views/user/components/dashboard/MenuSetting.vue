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
  </div>
</template>

<script>
import PanelMenu from 'primevue/panelmenu';

export default {
  components: {
    PanelMenu,
  },
  data() {
    return {
      expandedKeys: {},
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
          route: '/setting',
          items: [],
        },
        {
          label: 'Theo dõi đơn hàng',
          icon: 'pi pi-search',
          route: '/setting',
          items: [],
        },
        {
          label: 'Giỏ hàng',
          icon: 'pi pi-search',
          route: '/setting',
          items: [],
        },
        {
          label: 'Danh sách yêu thích',
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

<style>
.ms-dashboard-settings {
  box-shadow: 0px 8px 40px 0px rgba(0, 0, 0, 0.08);
}

.ms-dashboard-settings {
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
</style>
