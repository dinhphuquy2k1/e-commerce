<template>
  <div class="ms-home d-flex flex-column">
    <div>
      <Banner></Banner>
    </div>
    <div class="core-value_container container">
      <div class="corevalue d-flex flex-row">
        <div v-for="(item, index) in coreValues" class="d-flex flex-row flex-wrap flex-1">
          <div class="item d-flex">
            <div class="icon" :class="[item.icon]">
            </div>
            <div class="title d-flex flex-column justify-content-between">
              <span class="content">{{item.title}}</span>
              <strong class="description">{{item.description}}</strong>
            </div>
          </div>
          <div class="line" v-if="index !== coreValues.length- 1"></div>
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
  },
  data() {
    return {
      coreValues: [
        {
          title: this.$t('fast_delivery'),
          description: this.$t('delivery_in_24h'),
          icon: 'package',
        },
        {
          title: this.$t('return_policy'),
          description: this.$t('easy'),
          icon: 'trophy',
        },
        {
          title: this.$t('secure_payment'),
          description: this.$t('your_money_is_safe'),
          icon: 'credit-card',
        },
        {
          title: this.$t('support_24_7'),
          description: this.$t('contact_online_chat'),
          icon: 'headphone',
        }
      ]
    }
  }
}
</script>

<style lang="scss" scoped>
.ms-home {
  .core-value_container {
    padding: 0 var(--padding-base) 0 var(--padding-base);

    .corevalue {
      border-radius: 6px;
      border: 1px solid #E4E7E9;
      background: #FFF;
      display: flex;
      margin-top: 24px;
      padding: 16px;

      .item {
        gap: 8px;
        padding: 8px;
        flex: 1;

        .icon {
          min-width: 40px;
          min-height: 40px;
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
            font-size: 13px;
            font-style: normal;
            font-weight: 500;
          }

          .description {
            font-weight: 600;
            font-size: 16px;
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