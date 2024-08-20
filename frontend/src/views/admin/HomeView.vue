<template>
  <div class="ma-wrapper w-100 d-flex h-100vh flex-column">
    <router-view name="header"></router-view>
    <div class="d-flex ma-main flex-grow-1">
      <router-view name="navbar"></router-view>
      <div class="ma-content d-flex">
        <router-view name="content"></router-view>
      </div>
    </div>
  </div>
  <LiveChat/>
</template>

<script>
import LiveChat from "@/components/LiveChat.vue";

export default {
  components: {
    LiveChat
  },
  data() {
    return {}
  }
}
</script>

<style lang="scss">
.ma-wrapper {
  color: #212121;
  background: #f4f5f8;
  overflow: hidden;

  .ma-main {
    overflow: auto;

    .ma-content {
      transition: width .2s;
      height: 100%;
      box-shadow: inset 0 1.5px 2px 0 rgba(0, 0, 0, .1);

      .form-list .list-title {
        font-size: 20px;
        font-weight: 700;
        line-height: 35px;
      }

      .group-form_list {
        gap: 16px;
      }

      .group-form_box {
        display: flex;
        flex-direction: column;

        &.group-form_properties {
          .row {
            background: #f5f5f5;
            border-radius: 8px;

            .label {
            }
          }
        }

        .label {
          color: var(--Gray-900);
          text-align: left;
          margin-bottom: 10px;
        }

        .description {
          text-align: left;
          color: rgba(0, 0, 0, .55);
          margin-bottom: 10px;
        }
      }

      .form-list {
        .title-box {
          margin: 0 0 16px;
        }

        .toolbar-box {
          margin: 0 0 16px;
        }

        .m-search_form {
          width: 265px;
          max-height: 38px;
          height: 36px;
          background: #fff;
          border: 1px solid var(--Gray-100);
          border-radius: 4px;
          .p-inputtext{
            background: transparent;
          }
        }

        .m-search_form:focus-within {
          border: 1px solid #0073e6;
        }

        .box, .card {
          background-color: #fff;
          border-radius: 4px;
          box-shadow: 0 0 11px rgba(0, 0, 0, .08);
        }

        .list-content {
          position: relative;
        }
      }
    }

    nav:not(.collapsed) + .ma-content {
      width: calc(100% - $navbar-width);
    }

    nav + .ma-content {
      width: calc(100% - 56px);
    }
  }
}
</style>
