<template>
  <div class="ms-lastes-new_wrapper">
    <div class="ms-lastes-new_container d-flex flex-column">
      <div class="ms-lastest-new_header">
        Tin mới nhất
      </div>
      <div class="ms-lastest-new_main">
        <Carousel :value="news" :numVisible="3" :numScroll="1" :responsiveOptions="responsiveOptions">
          <template #item="slotProps">
            <div class="d-flex flex-column align-items-center justify-content-center store-category_item">
              <div>
                <Image :src="require('@public/assets/news/'+ slotProps.data.image)" alt="Image"/>
              </div>
              <div class="ms-facts mt-3 d-flex justify-content-start w-100">
                <div class="ms-item">
                  <div class="icon icon-w24 icon-user-circle user"></div>
                  <div class="title">Kristin</div>
                </div>
                <div class="ms-item">
                  <div class="icon icon-w24 date icon-calendar-blank"></div>
                  <div class="title">19Dec, 2013</div>
                </div>
                <div class="ms-item">
                  <div class="icon icon-w24 icon-chat-circle-dots chat"></div>
                  <div class="title">453</div>
                </div>
              </div>
              <div class="mt-3 text-start w-100 ms-title">{{ slotProps.data.title }}</div>
              <div class="ms-description w-100 mt-2 text-start">{{ slotProps.data.description }}</div>
              <div class="ms-footer w-100 justify-content-start d-flex">
                <Button class="ms-btn white ms-btn_search mt-4 text-center ps-3 pe-3">
                  <div class="d-flex align-items-center gap-1">
                    <div>Đọc thêm</div>
                    <div class="icon-w20 icon-arrow-right_orange"></div>
                  </div>
                </Button>
              </div>
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
import Button from 'primevue/button';

export default {
  components: {
    Image,
    Carousel,
    Button
  },
  data() {
    return {
      news: [
        {
          id: '1000',
          code: 'f230fh0g3',
          title: 'Cras nisl dolor, accumsan et metus sit amet, vulputate condimentum dolor.',
          description: 'Maecenas scelerisque, arcu quis tempus egestas, ligula diam molestie lectus, tincidunt malesuada arcu metus posuere metus.',
          image: 'unsplash_iZVrfElG1t0.png',
          price: 65,
          category: 'Accessories',
          quantity: 24,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1001',
          code: 'nvklal433',
          title: 'Curabitur pulvinar aliquam lectus, non blandit erat mattis vitae. ',
          description: 'Maecenas scelerisque, arcu quis tempus egestas, ligula diam molestie lectus, tincidunt malesuada arcu metus posuere metus.',
          image: 'unsplash_iZVrfElG1t0.png',
          price: 72,
          category: 'Accessories',
          quantity: 61,
          inventoryStatus: 'INSTOCK',
          rating: 4
        },
        {
          id: '1002',
          code: 'zz21cz3c1',
          title: 'Curabitur massa orci, consectetur et blandit ac, auctor et tellus.',
          description: 'Maecenas scelerisque, arcu quis tempus egestas, ligula diam molestie lectus, tincidunt malesuada arcu metus posuere metus.',
          image: 'unsplash_iZVrfElG1t0.png',
          price: 79,
          category: 'Fitness',
          quantity: 2,
          inventoryStatus: 'LOWSTOCK',
          rating: 3
        },
        {
          id: '1002',
          code: 'zz21cz3c1',
          title: 'Blue Band',
          description: 'Product Description',
          image: 'unsplash_iZVrfElG1t0.png',
          price: 79,
          category: 'Fitness',
          quantity: 2,
          inventoryStatus: 'LOWSTOCK',
          rating: 3
        },
      ]
    }
  }
}
</script>

<style lang="scss">
.ms-lastes-new_wrapper {
  background: var(--Gray-50);
  padding: 0 $padding-base 0 $padding-base;

  .p-carousel-prev, .p-carousel-next {
    visibility: hidden;
  }

  &:hover {
    .p-carousel-prev, .p-carousel-next {
      visibility: visible;
    }
  }
}

.ms-lastes-new_container {
  padding: 72px 0px;

  .ms-lastest-new_header {
    color: #191C1F;
    text-align: center;
    font-size: 32px;
    font-style: normal;
    font-weight: 600;
    padding-bottom: 40px;
  }

  .ms-lastest-new_main {
    .store-category_item {
      padding: 24px 12px;
      margin: 0.5rem;
      border-radius: 4px;
      border: 1px solid #E4E7E9 !important;
      background: #FFF !important;

      .ms-title {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
        -webkit-line-clamp: 2;
        height: 48px;
        color: #191C1F;
        font-size: 16px;
        font-style: normal;
        font-weight: 500;
        text-overflow: ellipsis;
      }

      .ms-description {
        display: -webkit-box;
        -webkit-box-orient: vertical;
        overflow: hidden;
        height: 72px;
        -webkit-line-clamp: 3;
        color: #77878F;
        font-weight: 400;
        text-overflow: ellipsis;
      }

      .ms-facts {
        gap: 16px;

        .ms-item {
          display: flex;
          gap: 6px;
          align-items: center;

          .icon {
            width: 24px;
            height: 24px;
          }
        }
      }

      .ms-footer {
        .ms-btn {
          color: #FA8232;
          border-radius: 2px;
          border: 2px solid #FFE7D6;
        }

        .ms-btn:hover {
          color: #fff;
          background: var(--Primary-500);

          .icon-arrow-right_orange {
            background-image: url('@public/assets/icons/ArrowRightWhite.svg');
          }
        }
      }
    }

    .p-carousel-indicators {
      display: none;
    }

    .prev_icon {
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      width: 30px;
      height: 30px;
      rotate: 180deg;
      background: var(--Primary-500);
      background-image: url('@public/assets/icons/ArrowRightWhite.svg');
      background-position: center;
      background-size: 24px 24px;
    }

    .next_icon {
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 50%;
      width: 30px;
      height: 30px;
      background: var(--Primary-500);
      background-position: center;
      background-size: 24px 24px;
      background-image: url('@public/assets/icons/ArrowRightWhite.svg');
    }

    .p-carousel {
      position: relative;

      .p-carousel-prev, .p-carousel-next {
        position: absolute;
        top: 50%;
        z-index: 2;
      }

      .p-carousel-next {
        right: -30px;
      }

      .p-carousel-prev {
        left: -30px;
      }
    }
  }
}
</style>