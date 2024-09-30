<template>
  <div class="ms-store_categories-wrapper">
    <div class="ms-store_categories">
      <div class="title">
        Mua sắm với danh mục
      </div>
      <div class="ms-store_categories-main">
        <Carousel :value="getCategory" :numVisible="5" :numScroll="1" :responsiveOptions="responsiveOptions" circular
                  :autoplayInterval="3000">
          <template #item="slotProps">
            <div class="d-flex flex-column align-items-center justify-content-between store-category_item flex-1" @click="selectCategory(slotProps.data)">
              <div>
                <Image :src="require('@public/assets/'+ slotProps.data.media)" alt="Image"/>
              </div>
              <div class="mt-3 text-center label">{{ slotProps.data.label }}</div>
            </div>
          </template>
        </Carousel>
      </div>
    </div>
  </div>
</template>


<script>
import Image from 'primevue/image';
import Carousel from 'primevue/carousel';
import {mapGetters} from "vuex";

export default {
  components: {
    Carousel,
    Image
  },
  data() {
    return {
      responsiveOptions: [
        {
          breakpoint: '1400px',
          numVisible: 4,
          numScroll: 1
        },
        {
          breakpoint: '1200px',
          numVisible: 3,
          numScroll: 1
        },
        {
          breakpoint: '768px',
          numVisible: 2,
          numScroll: 1
        },
      ]
    };
  },
  methods: {
    selectCategory(data) {
      this.$router.push({ name: 'shop_gird', query: { categoryId: data.key } });
    },
  },
  computed: {
    ...mapGetters(['getCategory']),
  },
}
</script>

<style lang="scss">
.ms-store_categories-wrapper {
  padding: 0 var(--padding-base) 0 var(--padding-base);
}

.ms-store_categories {
  .title {
    color: #191C1F;
    text-align: center;
    font-size: 32px;
    font-style: normal;
    font-weight: 500;
    margin-bottom: 40px;
  }

  .ms-store_categories-main {
    .p-carousel-items-container {
      .p-carousel-item {
        cursor: pointer;
        display: flex;

        .store-category_item {
          padding: 24px 12px;
          margin: 0.5rem;
          border-radius: 4px;
          border: 1px solid #E4E7E9 !important;
          background: #FFF !important;

          .label {
            color: var(--Gray-900);
            font-weight: 500;
            font-size: 16px;
          }
        }

        .p-image {
          max-width: 148px;
          max-height: 148px;
          background-color: transparent;
          mix-blend-mode: multiply;

          img {
            height: 148px;
            width: 148px;
            max-width: 148px;
            max-height: 148px;
            border-radius: 4px;
          }
        }
      }
    }

    .p-carousel-indicators {
      display: none;
    }
  }
}

</style>
