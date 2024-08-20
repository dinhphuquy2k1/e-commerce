<template>
  <nav class="ma-navbar position-relative d-flex flex-column justify-content-between"
       :class="{'collapsed': isCollapsed}">
    <div class="left-container flex-grow-1">
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
    <div class="toggle-button-container">
      <div class="toggle-button gap-2 d-flex pointer show justify-content-start" :class="{'hidden': isCollapsed}"
           @click="isCollapsed = !isCollapsed">
        <span class="icon"></span>
        <span class="toggle-title text-start">Thu gọn</span>
      </div>
    </div>

  </nav>
</template>

<script>
import PanelMenu from 'primevue/panelmenu';
import {getMenu} from "@/api/menu";

export default {
  props: ['isChatNavbar'],
  components: {
    PanelMenu
  },
  data() {
    return {
      isCollapsed: false,
      menus: [],
      expandedKeys: {},
    }
  },
  methods: {
    expandedMenu() {
      for (const [index, item] of this.menus.entries()) {
        const find = item.routes.findIndex(route => route === this.$route.path);
        if (find !== -1) {
          this.expandedKeys = {
            [item.key]: true
          }
          break;
        }
      }
    },
    /**
     * Lấy danh sách menu
     */
    async loadMenu() {
      const menu_type = this.isChatNavbar ? 1 : 0;
      await getMenu(menu_type).then(res => {
        this.menus = res.data
      }).catch(error => {
        console.log(error)
      })
    },
  },
  async created() {
    await this.loadMenu();
    this.expandedMenu();
  }
}
</script>

<style lang="scss">
.ma-navbar {
  overflow: hidden;
  width: $navbar-width;
  padding: 1px;
  transition: width .2s;
  box-shadow: inset 0 1.5px 2px 0 rgba(0, 0, 0, .1);
  background: #fff;
  height: 100%;

  &:hover {
    overflow-y: auto;
  }

  &.collapsed {
    min-width: 56px;
    width: 56px;
  }

  .left-container {
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

      .router-link-active {
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


  .toggle-button-container {
    position: sticky;
    bottom: 0;
    height: 58px;
    background: #fff;

    .toggle-button {
      cursor: pointer;
      margin: 8px 8px 18px 8px;
      height: 40px;
      border-radius: 8px;
      line-height: 40px;
      background: #edf1f5;

      .toggle-title {
        display: block;
      }
    }

    .toggle-button {
      .icon:before {
        content: "";
        display: inline-block;
        margin-top: 8px;
        margin-left: 16px;
        left: 0;
        height: 24px;
        width: 24px;
        background: transparent url('@public/assets/icons/ic_toggle.4abb3c52.svg') no-repeat;
        transform: rotate(0deg);
        transition-duration: .4s;
      }
    }

    .toggle-button.hidden {
      width: 70%;
    }

    .toggle-button.hidden {
      .icon:before {
        transform: rotate(180deg) !important;
        margin-left: 8px;
      }

      .toggle-title {
        display: none;
      }
    }
  }


}
</style>
