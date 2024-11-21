<template>
  <div class="ma-header-wrapper">
    <div class="ma-header-container flex-grow-1 h-100 d-flex justify-content-between">
      <div class="left-side d-flex">
        <div class="logo-content d-flex justify-content-start">
          <div class="nav-logo"></div>
          <div class="logo-title">Brand</div>
        </div>
      </div>
      <div class="right-side d-flex">
        <div class="right-btt-action right-action icon-notify icon24 has-tooltip" v-tooltip.bottom="'Thông báo'"></div>
        <div class="right-btt-action right-action icon-setting icon24 setting has-tooltip"
             v-tooltip.bottom="'Cài đặt'"></div>
        <div class="h-100 ms-header-profile">
          <Button
              @click="toggle" aria-haspopup="true"
              aria-controls="overlay_menu"
              class="ms-btn btn-transparent h-100 rounded-0 mw-0 d-flex justify-content-center flex-grow-1 ms-btn_search ps-3 pe-3 gap-2">
            <div class="icon-w24 ms-avatar">
              <img
                  :src="require('@public/assets/images/7220334d431949e0972ce009d8d8d09b~tplv-aphluv4xwc-origin-jpeg.jpeg')"
                  alt="" width="24" height="24">
            </div>
            <div class="title">Phú Quý</div>
            <div class="icon"></div>
          </Button>
          <Menu ref="menu" id="overlay_menu" :model="items" :popup="true"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Menu from 'primevue/menu';
import Button from 'primevue/button';

export default {
  components: {
    Menu,
    Button
  },
  data() {
    return {
      items: [
        {
          label: 'Refresh',
          icon: 'pi pi-refresh'
        },
        {
          label: 'Export',
          icon: 'pi pi-upload'
        }
      ]
    };
  },
  methods: {
    toggle(event) {
      this.$refs.menu.toggle(event);
    }
  }

}
</script>

<style lang="scss">
.ma-header-wrapper {
  height: 56px;
  min-height: 56px;
  background: #121212;
  color: #fff;
  width: 100%;
  box-shadow: inset 0 1.5px 2px 0 rgba(0, 0, 0, .1);

  .ma-header-container {
    .left-side {
      .logo-content {
        display: flex;
        align-items: center;
        width: 204px;
        justify-content: center;
        padding-left: 25px;
      }

      .logo-content .logo-title {
        font-size: 20px;
        text-align: center;
        font-weight: 700;
      }

      .logo-content .nav-logo {
        display: block;
        width: 32px;
        height: 32px;
        background: url('@public/assets/icons/logo_footer.svg') no-repeat;
        background-size: 32px;
        border-radius: 50%;
        margin-right: 12px;
      }

    }

    .right-side {
      .right-btt-action {
        height: 38px;
        width: 40px;
        margin: auto !important;
        border-radius: 50%;
        position: relative;
      }

      .right-action:hover {
        cursor: pointer;
        background-color: #f5f5f5;
        background-size: 24px;
      }

      .ms-avatar {
        opacity: 0.9;
        img {
          border-radius: 50%;
        }
      }

      .title {
        color: var(--primary);
        -webkit-line-clamp: 1;
        -webkit-box-orient: vertical;
        display: -webkit-box;
        overflow: hidden;
        word-break: break-all;
        opacity: 0.7;
      }
    }
  }
}
</style>
