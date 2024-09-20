<template>
  <div class="ms-account-setting_wrapper">
    <div class="ms-account-setting_container d-flex flex-column">
      <div class="ms-account-setting_header">
        <div class="header text-start">{{ $t('account_settings') }}</div>
        <div class="content row gx-0 gy-0">
          <div class="col-xxl-3 gy-3 mt-0 gx-3 d-flex justify-content-center flex-1">
            <Image alt="Image" preview class="ms-avatar rounded-0">
              <template #indicatoricon>
                <i class="pi pi-search"></i>
              </template>
              <template #image>
                <img :src="require('@public/assets/images/avatar/162971076.jpeg')" alt="image" width="176"
                     height="176"/>
              </template>
              <template #preview="slotProps">
                <img :src="require('@public/assets/images/avatar/162971076.jpeg')" alt="preview"
                     :style="slotProps.style" @click="slotProps.onClick" width="176"
                     height="176"/>
              </template>
            </Image>
          </div>
          <div class="col-xxl-9 row gx-3 mt-0 gy-3">
            <div class="item col-6 d-flex flex-column">
              <div class="label">{{ $t('display_name') }}</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-6">
              <div class="label">{{ $t('account') }}</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-6">
              <div class="label">{{ $t('full_name') }}</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-6">
              <div class="label">{{ $t('email') }}</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-6">
              <div class="label">{{ $t('phone_number') }}</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-6">
              <div class="label">{{ $t('date_of_birth') }}</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
          </div>
          <div class="col-xxl-12 d-flex justify-content-center">
            <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-4 pe-4">
              <div class="d-flex align-items-center gap-1">
                <div>{{ $t('update') }}</div>
              </div>
            </Button>
          </div>
        </div>
      </div>
      <div class="ms-account-setting_content d-flex flex-column mt-4">
        <div class="left-side">
          <div class="header text-start">{{ $t('shipping_address') }}</div>
          <div class="content row gy-0 gx-0">
            <div class="col-xxl-12 row gx-3 mt-0 gy-3">
              <div class="item col-xxl-12">
                <div class="label">{{ $t('full_name') }}</div>
                <div class="value">
                  <InputText type="text" :placeholder="$t('customer_full_name')"/>
                </div>
              </div>
              <div class="item col-6">
                <div class="label">{{ $t('email') }}</div>
                <div class="value">
                  <InputText type="text" :placeholder="$t('email_address')"/>
                </div>
              </div>
              <div class="item col-6">
                <div class="label">{{ $t('phone_number') }}</div>
                <div class="value">
                  <InputText type="text" :placeholder="$t('phone_number')"/>
                </div>
              </div>
              <div class="item col-6">
                <div class="label">Tỉnh/Thành phố</div>
                <div class="value">
                  <InputText type="text"/>
                </div>
              </div>
              <div class="item col-6">
                <div class="label">Quận Huyện</div>
                <div class="value">
                  <InputText type="text"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">{{ $t('delivery_address') }}</div>
                <div class="value">
                  <InputText type="text"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">{{ $t('note') }}</div>
                <div class="value">
                  <Textarea rows="4" cols="30" class="h-100" :placeholder="$t('note')"/>
                </div>
              </div>
              <div class="item col-xxl-12 d-flex justify-content-center">
                <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-4 pe-4">
                  <div class="d-flex align-items-center gap-1">
                    <div>{{ $t('update') }}</div>
                  </div>
                </Button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="ms-account-setting_content d-flex flex-column mt-4">
        <div class="left-side">
          <div class="header text-start">{{ $t('change_password') }}</div>
          <div class="content row gy-0 gx-0">
            <div class="col-xxl-12 row gx-3 mt-0 gy-3">
              <div class="item col-xxl-12">
                <div class="label">{{ $t('current_password') }}</div>
                <div class="value">
                  <InputText type="text" :placeholder="$t('current_password')"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">{{ $t('new_password') }}</div>
                <div class="value">
                  <InputText type="text" :placeholder="$t('new_password')"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">{{ $t('confirm_password') }}</div>
                <div class="value">
                  <InputText type="text" :placeholder="$t('confirm_password')"/>
                </div>
              </div>
              <div class="item col-xxl-12 d-flex justify-content-center">
                <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-4 pe-4">
                  <div class="d-flex align-items-center gap-1">
                    <div>{{ $t('update') }}</div>
                  </div>
                </Button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Image from 'primevue/image';
import Textarea from 'primevue/textarea';

export default {
  components: {
    InputText,
    Image,
    Textarea
  }
}
</script>

<style lang="scss">
.ms-account-setting_wrapper {
  .ms-account-setting_container {
    .header {
      color: var(--Gray-900);
      font-weight: 500;
      border-radius: 4px 4px 0px 0px;
      border: 1px solid var(--Gray-100, #E4E7E9);
      padding: 16px 24px;
      background: var(--Gray-00, #FFF);
    }

    .content {
      border-radius: 4px;
      border: 1px solid var(--Gray-100, #E4E7E9);
      border-top: none;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      background: var(--Gray-00, #FFF);
      padding: 24px;

      .p-image {
        border-radius: 50%;
        width: 176px;
        height: 176px;

        &.p-image-preview-container:hover {
          .p-image-preview-indicator {
            border-radius: 50%;
          }
        }

        img {
          object-fit: contain;
          border-radius: 50%;
        }
      }

      .item {
        .label {
          text-align: left;
        }

        .value {
          padding-top: 8px;
        }
      }
    }

    .ms-account-setting_content {
      .left-side {

      }
    }
  }
}
</style>
