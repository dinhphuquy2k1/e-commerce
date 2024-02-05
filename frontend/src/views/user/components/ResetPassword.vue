<template>
  <div class="ms-login_wrapper ms-reset_wrapper">
    <div class="ms-login_container ms-reset_container">
      <div class="ms-reset_header">
        <div class="title">Thay đổi mật khẩu</div>
        <div class="description">Bạn có thể thay đổi mật khẩu của bạn vì lý do bảo mật hoặc đặt lại mật khẩu</div>
      </div>
      <div class="ms-login_main d-flex flex-column gap-3">
        <div class="row gy-2">
          <div class="col-12 text-start">Mật khẩu hiện tại:</div>
          <div class="col-12">
            <InputText type="text"/>
            <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
          </div>
        </div>
        <div class="row gy-2">
          <div class="col-12 text-start">Mật khẩu mới:</div>
          <div class="col-12">
            <InputText type="text"/>
            <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
          </div>
        </div>
        <div class="row gx-0 gy-0">
          <Button class="ms-btn orange ms-btn_search mt-2 text-center d-flex justify-content-center ps-3 pe-3">
            <div class="d-flex align-items-center gap-1">
              <div>Thay đổi</div>
            </div>
          </Button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';

export default {
  components: {
    TabView,
    TabPanel,
    InputText,
    Button
  }
}
</script>

<style lang="scss">
.ms-login_wrapper {
  display: flex;
  background: #FFFFFF;
  align-items: center;
  justify-content: center;
  padding: 100px 0;

  .ms-login_container {
    width: 470px;
    border-radius: 4px;
    border: 1px solid var(--Gray-100);
    background: var(--Gray-00);

    /* Dropdown Shadow */
    box-shadow: 0px 8px 40px 0px rgba(0, 0, 0, 0.12);

    .p-tabview-nav {
      .p-tabview-header {
        flex: 1;
        text-align: center;
        justify-content: center;
      }
    }

    .p-tabview-panels {
      padding: 32px;

      .ms-login_main {
        .line {
          width: 100%;
          height: 1px;
          background: #E4E7E9;
          position: absolute;
          top: 50%;
          z-index: 1;
        }

        .ms-error-text {
          color: #e61d1d;
        }

        .ms-forget_password {
          color: var(--Secondary-500);

          &:hover {
            cursor: pointer;
            text-decoration: underline;
          }
        }

        .text {
          padding: 0 8px;
          gap: 10px;
          background: var(--Gray-00, #FFF);
          z-index: 2;
          width: max-content;
        }

        .ms-login-with {
          color: var(--Gray-700, #475156);

          .ms-btn {
            border-radius: 2px;
            border: 1px solid var(--Gray-100, #E4E7E9);
            background: var(--Gray-00, #FFF);
            color: var(--Gray-700, #475156);

            &:hover {
              border-radius: 2px;
              border: 1px solid var(--Gray-100, #E4E7E9);
              background: var(--Gray-00, #FFF);
              box-shadow: 0px 2px 8px 0px rgba(0, 0, 0, 0.06);
              color: var(--Gray-900);
            }
          }
        }
      }
    }
  }
}

.ms-reset_wrapper {
  .ms-reset_container {
    padding: 32px;

    .ms-reset_header {
      .title {
        color: var(--Gray-900);
        font-size: 20px;
        font-style: normal;
        font-weight: 600;
        padding-bottom: 12px;
      }
      .description{
        color: var(--Gray-600);
        padding-bottom: 24px;
      }
    }
  }
}
</style>
