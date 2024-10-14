<template>
  <div class="ms-box-home-wrapper mt-4 d-flex flex-column">
    <div class="header-container d-flex flex-wrap justify-content-between">
      <div class="d-flex align-items-center gap-2 mb-2">
        <div class="d-flex align-items-center">
          <div class="header">
            <div class="title">
              <a href="">{{ header }}</a>
            </div>
          </div>
        </div>
        <SpinSetting :setting="{position: 'static'}"/>
      </div>
      <div class="scroll">
        <div class="other-link scroll-x">
          <div class="other-link-item pointer" v-for="item in data.tags">
            {{ item.title }}
          </div>
          <div class="other-link-item actived pointer">{{ $t('view_all') }}</div>
        </div>
      </div>
    </div>
    <div class="content-container flex-1 d-flex" v-if="!withSlider && products?.data?.length > 0">
      <div class="row g-3 row-cols-xl-5 row-cols-lg-4 row-cols-md-3 row-cols-sm-2 row-cols-1 flex-1">
        <div v-for="item in products.data" class="flex-1">
          <ProductItem :data="item"></ProductItem>
        </div>
      </div>
    </div>

    <div v-if="withSlider && data?.items?.length > 0" class="content-container-slider">
      <Carousel :value="data.items" :numVisible="5" :numScroll="1" :responsiveOptions="responsiveOptions" circular
                :showIndicators="false" :autoplayInterval="5000" containerClass="ms-carousel-inline">
        <template #item="slotProps">
          <ProductItem :data="slotProps.data"></ProductItem>
        </template>
      </Carousel>
    </div>

    <div class="" v-if="data.items.length === 0 || data?.items?.length > 0">
      <div class="d-flex flex-column p-24 justify-content-center align-items-center">
        <div class="icon-empty_table"></div>
        <div>{{ $t('no_data') }}</div>
      </div>
    </div>
  </div>
</template>

<script>
import ProductItem from "@/components/ProductItem.vue";
import Carousel from 'primevue/carousel';
import SpinSetting from "@/views/user/components/SpinSetting.vue";
import {mapGetters, mapActions} from 'vuex';

export default {
  props: {
    header: {
      required: true,
      type: String,
    },
    withSlider: {
      type: Boolean,
      default: false,
    },
    data: {
      type: {},
    }
  },
  components: {
    ProductItem,
    Carousel,
    SpinSetting,
  },
  data() {
    return {
      pagination: {
        limit: 20,
        categoryId: null,
        withCategoryChildren: true,
        rangePrice: [0, 999999999],
      },
      responsiveOptions: [
        {
          breakpoint: '1400px',
          numVisible: 4,
          numScroll: 1
        },
        {
          breakpoint: '1199px',
          numVisible: 3,
          numScroll: 1
        },
        {
          breakpoint: '767px',
          numVisible: 2,
          numScroll: 1
        },
        {
          breakpoint: '575px',
          numVisible: 1,
          numScroll: 1
        }
      ],
    }
  },
  methods: {
    ...mapActions(['getProductWithFilter']),
  },
  created() {
    // this.getProductWithFilter({
    //   filters: {
    //     'filters': this.pagination,
    //   }
    // });
  },
  computed: {
    ...mapGetters(['products']),
  }
}
</script>

<style lang="scss">
.ms-box-home-wrapper {
  padding: 0 var(--padding-base) 0 var(--padding-base);
  margin: 20px 0;

  .header-container {
    .header {
      background: var(--Secondary-500,);
      display: inline-block;
      height: 30px;
      overflow: hidden;

      &:after {
        content: " ";
        border-top: 30px solid var(--Secondary-700);
        border-left: 30px solid var(--Secondary-500,);
        margin-left: 40px;
      }

      .title {
        color: var(--primary);
        padding: 5px 60px 2px 35px;
        margin: 0 0 0 60px;
        background: var(--Secondary-700);
        font-weight: 600;
        font-size: 14px;
        text-transform: uppercase;

        a {
          color: var(--primary);
          text-decoration: none;
        }
      }
    }

    .other-link {
      flex-grow: 3;
      display: flex;

      .other-link-item {
        display: block;
        margin-left: 10px;
        border: 1px solid #ccc;
        background: #fff;
        padding: 4px 10px;
        border-radius: 8px;
        color: #333;
        margin-bottom: 18px;
        white-space: nowrap;

        &:hover {
          background: var(--Secondary-700);
          color: var(--primary);
        }

        &.actived {
          color: var(--primary);
          background: var(--Secondary-700);
          border-color: var(--primary);
        }
      }
    }

  }

  .content-container {
    display: flex;
    flex-flow: wrap;
    animation: append .2s ease-in-out;
  }

  .content-container-slider {
    .p-carousel-item {
      padding-right: 8px;

      &.p-carousel-item-end {
        padding-right: 0;
      }

      .ms-product-item {
        .top-offer_item {
          //border: unset;
          padding: 8px;
        }
      }
    }
  }
}
</style>
