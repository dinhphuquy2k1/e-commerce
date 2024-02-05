<template>
  <div class="ms-checkout-wrapper flex-1 d-flex justify-content-center">
    <div class="ms-checkout-container">
      <div class="header">
        <Image :src="require('@public/assets/icons/checkout-circle.svg')" width="88px" alt="Image"/>
      </div>
      <div class="main">
        <div class="title">
          Đơn hàng của bạn đã được đặt thành công
        </div>
        <div class="description">
          Pellentesque sed lectus nec tortor tristique accumsan quis dictum risus. Donec volutpat mollis nulla non facilisis.
        </div>
      </div>
      <div class="footer d-flex justify-content-center">
        <Button class="ms-btn border-orange_white ms-btn_search mt-4 text-center ps-3 pe-3">
          <div class="d-flex align-items-center gap-1">
            <div class="icon-w20 icon-stack-orange"></div>
            <div>Đi tới trang tổng quan</div>
          </div>
        </Button>
        <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-3 pe-3">
          <div class="d-flex align-items-center gap-1">
            <div>Xem đơn hàng</div>
            <div class="icon-w20 icon-arrow-right_white"></div>
          </div>
        </Button>
      </div>
    </div>
  </div>
</template>

<script>
import Image from 'primevue/image';

export default {
  components: {
    Image
  }
}
</script>

<style lang="scss">
.ms-checkout-wrapper {
  padding: 0 $padding-base;

  .ms-checkout-container {
    max-width: 500px;
    padding: 124px 0;

    .header {

    }

    .main {
      .title {
        font-size: 24px;
        font-style: normal;
        font-weight: 600;
        margin-top: 24px;
      }
      .description{
        margin-top: 12px;
        line-height: 20px;
        color: #5F6C72;
      }
    }

    .footer {
      margin-top: 32px;
      gap: 12px;

      .ms-btn:hover {

      }

      .border-orange_white.ms-btn:hover {
        .icon-stack-orange {
          background-image: url('@public/assets/icons/StackWhite.svg');
        }
      }
    }
  }
}
</style>
