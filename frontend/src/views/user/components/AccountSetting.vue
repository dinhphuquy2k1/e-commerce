<template>
  <div class="ms-account-setting_wrapper">
    <div class="ms-account-setting_container d-flex flex-column">
      <div class="ms-account-setting_header">
        <div class="header text-start">Thiết lập tài khoản</div>
        <div class="content row gx-0 gy-0">
          <div class="col-xxl-3 gy-3 mt-0 gx-3">
            <Image alt="Image" preview>
              <template #indicatoricon>
                <i class="pi pi-search"></i>
              </template>
              <template #image>
                <img src="/thumbnail.jpg" alt="image"/>
              </template>
              <template #preview="slotProps">
                <img src="/image.jpg" alt="preview" :style="slotProps.style" @click="slotProps.onClick"/>
              </template>
            </Image>
          </div>
          <div class="col-xxl-9 row gx-3 mt-0 gy-3">
            <div class="item col-xxl-6 d-flex flex-column">
              <div class="label">Tên hiển thị</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-xxl-6">
              <div class="label">Tài khoản</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-xxl-6">
              <div class="label">Họ tên</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-xxl-6">
              <div class="label">Email</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-xxl-6">
              <div class="label">Số điện thoại</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-xxl-6">
              <div class="label">Ngày sinh</div>
              <div class="value">
                <InputText type="text"/>
              </div>
            </div>
            <div class="item col-xxl-12 d-flex">
              <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-4 pe-4">
                <div class="d-flex align-items-center gap-1">
                  <div>Cập nhật</div>
                </div>
              </Button>
            </div>
          </div>
        </div>
      </div>
      <div class="ms-account-setting_content d-flex flex-column mt-4">
        <div class="left-side">
          <div class="header text-start">Địa chỉ giao hàng</div>
          <div class="content row gy-0 gx-0">
            <div class="col-xxl-12 row gx-3 mt-0 gy-3">
              <div class="item col-xxl-12">
                <div class="label">Họ tên</div>
                <div class="value">
                  <InputText type="text" placeholder="Họ và tên"/>
                </div>
              </div>
              <div class="item col-xxl-6">
                <div class="label">Email</div>
                <div class="value">
                  <InputText type="text" placeholder="Địa chỉ email"/>
                </div>
              </div>
              <div class="item col-xxl-6">
                <div class="label">Số điện thoại</div>
                <div class="value">
                  <InputText type="text" placeholder="Số điện thoại"/>
                </div>
              </div>
              <div class="item col-xxl-6">
                <div class="label">Tỉnh/Thành phố</div>
                <div class="value">
                  <InputText type="text"/>
                </div>
              </div>
              <div class="item col-xxl-6">
                <div class="label">Quận Huyện</div>
                <div class="value">
                  <InputText type="text"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">Địa chỉ nhận hàng</div>
                <div class="value">
                  <InputText type="text"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">Ghi chú</div>
                <div class="value">
                  <Textarea rows="4" cols="30" class="h-100" placeholder="Ghi chú"/>
                </div>
              </div>
              <div class="item col-xxl-12 d-flex">
                <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-4 pe-4">
                  <div class="d-flex align-items-center gap-1">
                    <div>Cập nhật</div>
                  </div>
                </Button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="ms-account-setting_content d-flex flex-column mt-4">
        <div class="left-side">
          <div class="header text-start">Thay đổi mật khẩu</div>
          <div class="content row gy-0 gx-0">
            <div class="col-xxl-12 row gx-3 mt-0 gy-3">
              <div class="item col-xxl-12">
                <div class="label">Mật khẩu hiện tại</div>
                <div class="value">
                  <InputText type="text" placeholder="Mật khẩu hiện tại"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">Mật khẩu mới</div>
                <div class="value">
                  <InputText type="text" placeholder="Mật khẩu mới"/>
                </div>
              </div>
              <div class="item col-xxl-12">
                <div class="label">Nhập lại mật khẩu</div>
                <div class="value">
                  <InputText type="text" placeholder="Nhập lại mật khẩu"/>
                </div>
              </div>
              <div class="item col-xxl-12 d-flex">
                <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-4 pe-4">
                  <div class="d-flex align-items-center gap-1">
                    <div>Cập nhật</div>
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
