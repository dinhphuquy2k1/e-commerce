<template>
  <div class="ms-login_wrapper">
    <div class="ms-login_container">
      <TabView>
        <TabPanel :header="$t('login')">
          <div class="ms-login_main d-flex flex-column gap-3">
            <div class="row gy-2">
              <div class="col-12 text-start">{{ $t('email_or_phone') }}:</div>
              <div class="col-12">
                <InputText type="text" autofocus/>
                <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
              </div>
            </div>
            <div class="row gy-2">
              <div class="col-12 text-start">{{ $t('password') }}:</div>
              <div class="col-12">
                <InputText type="password"/>
                <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
              </div>
              <div class="col-12 text-start mt-2 ms-forget_password">{{ $t('forgot_password') }}</div>
            </div>
            <div class="row gx-0 gy-0">
              <Button class="ms-btn orange ms-btn_search mt-2 text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div>{{ $t('login') }}</div>
                  <div class="icon-w20 icon-arrow-right_white"></div>
                </div>
              </Button>
            </div>
            <div class="row position-relative d-flex justify-content-center gy-0 gx-0 mt-3">
              <div class="line"></div>
              <div class="text"><span>{{ $t('or') }}</span></div>
            </div>
            <div class="row gx-0 gy-0 ms-login-with">
              <Button class="ms-btn white ms-btn_search mt-2 text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div class="icon-w20 icon-google"></div>
                  <div class="text">{{ $t('login_with', {name: 'google'}) }}</div>
                </div>
              </Button>
            </div>
            <div class="row gx-0 gy-0 ms-login-with">
              <Button class="ms-btn white ms-btn_search text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div class="icon-w20 icon-apple"></div>
                  <div class="text">{{ $t('login_with', {name: 'AppleID'}) }}</div>
                </div>
              </Button>
            </div>
          </div>
        </TabPanel>
        <TabPanel :header="$t('register')">
          <div class="ms-login_main d-flex flex-column gap-3">
            <div class="row gy-2">
              <div class="col-12 text-start">{{ $t('full_name') }}:</div>
              <div class="col-12">
                <InputText type="text"/>
                <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
              </div>
            </div>
            <div class="row gy-2">
              <div class="col-12 text-start">{{ $t('email_or_phone') }}:</div>
              <div class="col-12">
                <InputText type="text"/>
                <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
              </div>
            </div>
            <div class="row gy-2">
              <div class="col-12 text-start">{{ $t('password') }}:</div>
              <div class="col-12">
                <InputText type="password"/>
                <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
              </div>
            </div>
            <div class="row gy-2">
              <div class="col-12 text-start">{{ $t('confirm_password') }}:</div>
              <div class="col-12">
                <InputText type="password"/>
                <div class="ms-error-text text-start mt-2 d-none">Lỗi</div>
              </div>
            </div>
            <div class="row gx-0 gy-0">
              <Button class="ms-btn orange ms-btn_search mt-2 text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div>{{ $t('register') }}</div>
                  <div class="icon-w20 icon-arrow-right_white"></div>
                </div>
              </Button>
            </div>
            <div class="row position-relative d-flex justify-content-center gy-0 gx-0 mt-3">
              <div class="line"></div>
              <div class="text"><span>{{ $t('or') }}</span></div>
            </div>
            <div class="row gx-0 gy-0 ms-login-with">
              <Button class="ms-btn white ms-btn_search mt-2 text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div class="icon-w20 icon-google"></div>
                  <div class="text">{{ $t('login_with', {name: 'google'}) }}</div>
                </div>
              </Button>
            </div>
            <div class="row gx-0 gy-0 ms-login-with">
              <Button class="ms-btn white ms-btn_search text-center d-flex justify-content-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div class="icon-w20 icon-apple"></div>
                  <div class="text">{{ $t('login_with', {name: 'AppleID'}) }}</div>
                </div>
              </Button>
            </div>
          </div>
        </TabPanel>
      </TabView>
    </div>
  </div>
</template>

<script>
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
import FocusTrap from 'primevue/focustrap';

export default {
  components: {
    TabView,
    TabPanel,
    InputText,
    Button,
    FocusTrap,
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
</style>
