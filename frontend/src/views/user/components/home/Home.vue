<template>
  <div class="ms-home d-flex flex-column">
    <div>
      <Banner></Banner>
    </div>
    <SpinSetting
        :setting="{ position: 'fixed', right: '20px', top: '20px', background: 'rgba(0,0,0,0.8)', borderRadius: '10px', items: settingItems, width: '150px' }"/>
    <div class="core-value_container">
      <div class="corevalue row g-0">
        <div v-for="(item, index) in coreValues" class="col-xxl-3 col-sm-6 col-6 corevalue-item">
          <div class="item d-flex">
            <div class="icon" :class="[item.icon]">
            </div>
            <div class="title d-flex flex-column justify-content-between">
              <span class="content">{{ item.title }}</span>
              <strong class="description">{{ item.description }}</strong>
            </div>
          </div>
          <!--          <div class="line" v-if="index !== coreValues.length- 1"></div>-->
        </div>
      </div>
    </div>
    <div v-for="item in configs.data">
      <BoxHome :header="item.title" v-if="item.type !== configs?.type?.ADS?.value" :data="item"/>
      <BoxAds v-else/>
    </div>
    <!--    <div>-->
    <!--      <TopOffer></TopOffer>-->
    <!--    </div>-->
    <!--    <div>-->
    <!--      <StoreCategories/>-->
    <!--    </div>-->
    <!--    <div>-->
    <!--      <FeaturedProducts/>-->
    <!--    </div>-->
    <!--    <div>-->
    <!--      <ComputerAccessories/>-->
    <!--    </div>-->
    <!--    <div>-->
    <!--      <FooterBanner/>-->
    <!--    </div>-->
    <!--    <PromotionalTile/>-->
    <div>
      <LastestNew/>
    </div>
  </div>
  <TheLoading v-if="isLoadingConfig" :fixed="true"/>
</template>

<script>
import Banner from '@/views/user/components/banner/Banner.vue';
import TopOffer from '@/views/user/components/home/TopOffer.vue';
import StoreCategories from '@/views/user/components/home/StoreCategories.vue';
import FeaturedProducts from '@/views/user/components/home/FeaturedProducts.vue';
import ComputerAccessories from '@/views/user/components/home/ComputerAccessories.vue';
import LastestNew from '@/views/user/components/home/LastestNew.vue';
import FooterBanner from '@/views/user/components/banner/FooterBanner.vue';
import PromotionalTile from '@/views/user/components/home/PromotionalTile.vue';
import BoxHome from "@/views/user/components/home/BoxHome.vue";
import BoxAds from "@/views/user/components/home/BoxAds.vue";
import SpinSetting from "@/views/user/components/home/SpinSetting.vue";
import TheLoading from "@/components/TheLoading.vue";
import {mapGetters, mapActions} from 'vuex';

export default {
  components: {
    Banner,
    TopOffer,
    StoreCategories,
    FeaturedProducts,
    ComputerAccessories,
    LastestNew,
    FooterBanner,
    PromotionalTile,
    BoxHome,
    BoxAds,
    SpinSetting,
    TheLoading,
  },
  computed: {
    ...mapGetters(['configs', "isLoadingConfig"]),
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
      ],
      settingItems: [
        {
          title: this.$t('banner_settings'),
          route: '',
        },
        {
          title: this.$t('display_settings'),
          route: '',
        },
        {
          title: this.$t('contact_title'),
          route: '',
        },
      ],
    }
  },
  methods: {
    ...mapActions(['loadConfig']),
  },

  created() {
    this.loadConfig();
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
      padding: 16px;

      .corevalue-item {
        border-right: 1px solid #E4E7E9;

        &:last-child {
          border-right: none;
        }

        &:not(:first-child) {
          padding-left: 10px;
        }
      }

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

@media (max-width: 1400px) {
  .corevalue {
    .corevalue-item {
      &:nth-child(2) {
        border-right: none !important;
      }

      &:nth-child(3) {
        padding-left: 0 !important;
      }
    }
  }
}
</style>