<template>
  <div class="ms-settings_wrapper">
    <div class="ms-settings_container row g-lg-5">
      <div class="ms-settings-left_side col-md-3">
        <div class="ms-menu-setting">
          <router-view name="menu"></router-view>
        </div>
      </div>
      <div class="ms-settings-right_side col-md-9 pr-0">
        <router-view name="content"></router-view>
      </div>
    </div>
  </div>
</template>

<script>
import Menu from 'primevue/menu';
import SpeedDial from 'primevue/speeddial';

export default {
  components: {
    Menu,
    SpeedDial,
  },
  data() {
    return {
      items: [
        {
          label: 'New',
          icon: 'pi pi-plus',
          to: '/',
        },
        {
          label: 'Search',
          icon: 'pi pi-search',
          to: '/setting',
        }
      ]
    };
  }
}
</script>

<style lang="scss">
.ms-settings_wrapper {
  padding: 40px var(--padding-base);

  .ms-settings_container {
    .ms-settings-left_side {
      .ms-menu-setting {
        position: sticky;
        top: 20px;

      }
    }

    .ms-settings-right_side {
      overflow: auto;

      .ms-shopping-cart_wrapper {
        padding: unset;

        .ms-shopping-cart_container {
          margin: unset !important;

        }
      }
    }
  }
}
</style>
