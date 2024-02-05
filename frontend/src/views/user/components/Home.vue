<template>
  <div class="ms-home d-flex flex-column">
    <div>
      <Banner></Banner>
    </div>
    <div class="core-value_container">
      <div class="corevalue d-flex flex-row flex-wrap align-items-center">
        <div class="item d-flex">
          <div class="icon package">
          </div>
          <div class="title d-flex flex-column align-items-start justify-content-between">
            <span class="content">Giao hàng nhanh chóng</span>
            <span class="description">Giao hàng trong 24/H</span>
          </div>
        </div>
        <div class="line"></div>
        <div class="item d-flex">
          <div class="icon trophy">
          </div>
          <div class="title d-flex flex-column align-items-start justify-content-between">
            <span class="content">Hoàn trả trong 24h</span>
            <span class="description">Đảm bảo hoàn tiền 100%</span>
          </div>
        </div>
        <div class="line"></div>
        <div class="item d-flex">
          <div class="icon credit-card">
          </div>
          <div class="title d-flex flex-column align-items-start justify-content-between">
            <span class="content">Thanh toán an toàn</span>
            <span class="description">Tiền của bạn được an toàn</span>
          </div>
        </div>
        <div class="line"></div>
        <div class="item d-flex">
          <div class="icon headphone">
          </div>
          <div class="title d-flex flex-column align-items-start justify-content-between">
            <span class="content">Hỗ trợ 24/7</span>
            <span class="description">Liên hệ / nhắn tin trực tuyến</span>
          </div>
        </div>
      </div>
    </div>
    <div>
      <TopOffer></TopOffer>
    </div>
    <div>
      <StoreCategories/>
    </div>
    <div>
      <FeaturedProducts/>
    </div>
    <div>
      <ComputerAccessories/>
    </div>
    <div>
      <FooterBanner/>
    </div>
    <PromotionalTile/>
    <div>
      <LastestNew/>
    </div>
  </div>
</template>

<script>
import Banner from '@/views/user/components/Banner.vue';
import TopOffer from '@/views/user/components/TopOffer.vue';
import StoreCategories from '@/views/user/components/StoreCategories.vue';
import FeaturedProducts from '@/views/user/components/FeaturedProducts.vue';
import ComputerAccessories from '@/views/user/components/ComputerAccessories.vue';
import LastestNew from '@/views/user/components/LastestNew.vue';
import FooterBanner from '@/views/user/components/FooterBanner.vue';
import PromotionalTile from '@/views/user/components/PromotionalTile.vue';

export default {
  components: {
    Banner,
    TopOffer,
    StoreCategories,
    FeaturedProducts,
    ComputerAccessories,
    LastestNew,
    FooterBanner,
    PromotionalTile
  }
}
</script>

<style lang="scss" scoped>
.ms-home {
  .core-value_container {
    padding: 0 $padding-base 0 $padding-base;
    .corevalue {
      padding: 0 $padding-base 0 $padding-base;
      border-radius: 6px;
      border: 1px solid #E4E7E9;
      background: #FFF;
      margin-top: 24px;
      padding: 16px;
      gap: 14px;

      .item {
        gap: 16px;
        padding: 16px;
        flex: 1;

        .icon {
          width: 40px;
          height: 40px;
          background-repeat: no-repeat;
          background-color: transparent;
        }

        .package {
          background-image: url('@public/assets/icons/Package.svg');
        }

        .trophy {
          background-image: url('@public/assets/icons/Trophy.svg');
        }

        .credit-card {
          background-image: url('@public/assets/icons/CreditCard.svg');
        }

        .headphone {
          background-image: url('@public/assets/icons/Headphones_40.svg');
        }

        .title {
          .content {
            font-style: normal;
            font-weight: 500;
          }

          .description {
            font-style: normal;
            font-weight: 400;
            color: #5F6C72;
          }
        }
      }

      .line {
        width: 1px;
        height: 56px;
        background: #E4E7E9;
      }
    }
  }

}
</style>