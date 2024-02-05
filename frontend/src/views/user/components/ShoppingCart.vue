<template>
  <div class="ms-shopping-cart_wrapper">
    <div class="ms-shopping-cart_container row gx-4 gy-4">
      <div class="col-xxl-9">
        <div class="left-side text-start">
          <div class="header">Giỏ hàng</div>
          <div class="main">Giỏ hàng</div>
          <div class="footer">
<Button class="ms-btn orange ms-btn_search mt-4 text-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div>Mua ngay</div>
                  <div class="icon-w20 icon-arrow-right_white"></div>
                </div>
              </Button>
          </div>
        </div>
      </div>
      <div class="col-xxl-3">
        <div class="right-side text-start">
          <div>Tổng thanh toán</div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Button from 'primevue/button';
export default {
  components:{
    Button
  }
}
</script>

<style lang="scss">
.ms-shopping-cart_wrapper {
  padding: 0 $padding-base;

  .ms-shopping-cart_container {
    background: var(--Gray-00, #FFF);

    .left-side {
      border-radius: 4px;
      border: 1px solid var(--Gray-100, #E4E7E9);
      .footer{
        padding: 20px 24px;
        border-top: 1px solid #E4E7E9;
      }
    }

    .right-side {
      border-radius: 4px;
      border: 1px solid var(--Gray-100, #E4E7E9);
      padding: 20px 24px;
    }
  }
}
</style>
