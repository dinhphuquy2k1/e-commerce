<template>
  <div class="ms-feature-product-wrapper">
    <div class="ms-featured_product-container row gap-24">
      <div class="ms-feature-product-discount col-lg-3 d-flex flex-column justify-content-between">
        <div class="ms-feature-product-main flex-grow-1 flex-column justify-content-between d-flex">
          <div class="d-flex flex-column ms-feature-product-info">
            <div class="title">Phụ kiện máy tính</div>
            <div class="discount">32% Discount</div>
            <div class="description">Cho tất cả các sản phẩm điện tử</div>
            <div class="d-flex align-items-center gap-1 justify-content-center">
                    <span>
                        Ưu đãi kết thúc sau:
                    </span>
              <span class="box-discount">11d</span>
            </div>
            <div>
              <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-3 pe-3">
                <div class="d-flex align-items-center gap-1">
                  <div>Mua ngay</div>
                  <div class="icon-w20 icon-arrow-right_white"></div>
                </div>
              </Button>
            </div>
          </div>
          <div class="bg-feature-product">
            <Image :src="require('@public/assets/images/Featured Products.jpg')" alt="Image"/>
          </div>
        </div>
      </div>
      <div class="ms-feature-product_main d-flex flex-column col-lg-9">
        <TabView :scrollable="true" :activeIndex="1">
          <TabPanel v-for="(tab, index) in tabs" :key="tab.title" :header="tab.title"
                    :disabled="index == 0 ? true : false">
            <div class="row">
              <div class="col-lg-3 col-md-4 ms-item gy-3 position-relative" v-for="item in products" :key="item">
                <div class="ms-item-main d-flex flex-column justify-content-between">
                  <div class="ms-offer-tag">
                    <Tag value="HOT" class="hot ms-offer-tag_item"></Tag>
                  </div>
                  <div class="ms-offer_image position-relative">
                    <Image :src="require('@public/assets/images/products/drone.png')" alt="Image"/>
                    <div class="ms-offer-buttons w-100">
                      <div class="d-flex justify-content-between gap-3">
                        <Button
                            class="ms-btn orange rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                            v-tooltip.bottom="{ value: `Yêu thích`, escape: true }">
                          <div class="icon-only icon-heart_black"></div>
                        </Button>
                        <Button
                            class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                            v-tooltip.bottom="{ value: `Thêm vào giỏ hàng`, escape: true }">
                          <div class="icon-only icon-simple_cart-black"></div>
                        </Button>
                        <Button
                            class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search mt-4"
                            v-tooltip.bottom="{ value: `Xem chi tiết`, escape: true }">
                          <div class="icon-only icon-eye"></div>
                        </Button>
                      </div>
                    </div>
                  </div>
                  <div class="rating d-flex gap-2 flex-wrap mt-3">
                    <div class="star-rating">
                      <Rating v-model="rating" readonly :cancel="false"/>
                    </div>
                    <div class="quantity-rating">
                      (52,677)
                    </div>
                  </div>
                  <div class="ms-offer_name text-start">
                    Bose Sport Earbuds - Wireless Earphones - Bluetooth In Ear...
                  </div>
                  <div class="ms-offer_price text-start">
                    <span class="offer-price_origin">25.000.000đ</span>
                    <span class="offer-price_final">20.000.000đ</span>
                  </div>
                </div>
              </div>
            </div>
          </TabPanel>
        </TabView>

      </div>
    </div>
  </div>
</template>

<script>
import Tag from 'primevue/tag';
import Image from 'primevue/image';
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import Button from 'primevue/button';
import Rating from 'primevue/rating';

export default {
  components: {
    TabView,
    TabPanel,
    Image,
    Tag,
    Button,
    Rating
  },
  data() {
    return {
      rating: 5,
      tabs: [
        {title: 'Sản phẩm nổi bật', content: 'Tab 0 Content'},
        {title: 'Tất cả', content: 'Tab 0 Content'},
        {title: 'Điện thoại', content: 'Tab 1 Content'},
        {title: 'Laptop', content: 'Tab 2 Content'},
        {title: 'Tai nghe', content: 'Tab 3 Content'},
        {title: 'TV', content: 'Tab 3 Content'},
        {title: 'Xem tất cả', content: 'Tab 4 Content'}
      ],
      products: [
        {
          id: '1000',
          code: 'f230fh0g3',
          name: 'Bamboo Watch',
          description: 'Product Description',
          image: 'Image.png',
          price: 65,
          category: 'Accessories',
          quantity: 24,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1001',
          code: 'nvklal433',
          name: 'Black Watch',
          description: 'Product Description',
          image: 'Image.png',
          price: 72,
          category: 'Accessories',
          quantity: 61,
          inventoryStatus: 'INSTOCK',
          rating: 4
        },
        {
          id: '1002',
          code: 'zz21cz3c1',
          name: 'Blue Band',
          description: 'Product Description',
          image: 'Image.png',
          price: 79,
          category: 'Fitness',
          quantity: 2,
          inventoryStatus: 'LOWSTOCK',
          rating: 3
        },
        {
          id: '1003',
          code: '244wgerg2',
          name: 'Blue T-Shirt',
          description: 'Product Description',
          image: 'Image.png',
          price: 29,
          category: 'Clothing',
          quantity: 25,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1004',
          code: '244wgerg2',
          name: 'Blue T-Shirt',
          description: 'Product Description',
          image: 'Image.png',
          price: 29,
          category: 'Clothing',
          quantity: 25,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1005',
          code: '244wgerg2',
          name: 'Blue T-Shirt',
          description: 'Product Description',
          image: 'Image.png',
          price: 29,
          category: 'Clothing',
          quantity: 25,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1006',
          code: '244wgerg2',
          name: 'Blue T-Shirt',
          description: 'Product Description',
          image: 'Image.png',
          price: 29,
          category: 'Clothing',
          quantity: 25,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1007',
          code: '244wgerg2',
          name: 'Blue T-Shirt',
          description: 'Product Description',
          image: 'Image.png',
          price: 29,
          category: 'Clothing',
          quantity: 25,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
      ],
    };
  }
}
</script>

<style lang="scss">
.ms-feature-product-wrapper {
  padding: 0 $padding-base 0 $padding-base;
}

.ms-featured_product-container {
  padding: 72px 0;

  .ms-feature-product-discount {

    .ms-feature-product-main {
      border-radius: 3px;
      background: #F3DE6D;
    }

    .bg-feature-product {
      img {
        border-bottom-right-radius: 3px;
        border-bottom-left-radius: 3px;
      }
    }

    .ms-feature-product-info {
      padding: 32px 8px;
      min-height: 288px;
      justify-content: space-between;

      .title {
        color: #BE4646;
        font-style: normal;
        font-weight: 600;
      }

      .discount {
        color: #191C1F;
        font-size: 28px;
        font-style: normal;
        font-weight: 600;
      }

      .description {
        color: #475156;
        font-size: 16px;
        font-style: normal;
        font-weight: 400;
      }

      .box-discount {
        background: #fff;
        border-radius: 2px;
        padding: 6px 12px;
      }
    }
  }

  .ms-feature-product_main {
    padding-left: 24px;

    .p-tabview-nav-content {
      .p-tabview-nav {
        border: none;
        padding-left: 0px;
        display: flex;

        .p-tabview-header:first-child {
          .p-tabview-nav-link {
            color: #191C1F;
          }

          opacity: 1;
          flex: 1;
          font-size: 24px;
          font-style: normal;
          font-weight: 600;
        }

        .p-tabview-header {
          display: flex;
          border-bottom: 3px solid #fff;
        }

        .p-tabview-nav-link {
          padding: 8px;
          color: #5F6C72;
          border: none;
          flex: 1;
          text-decoration: none;
        }

        .p-tabview-header.p-highlight {
          border-bottom: 3px solid #FA8232;

          .p-tabview-nav-link {
            color: #191C1F;
          }
        }

        .p-tabview-header:nth-last-child(2) {
          margin-left: 8px;
          display: flex;
          align-items: center;

          &::after {
            content: "";
            width: 20px;
            height: 20px;
            background-image: url('@public/assets/icons/ArrowRightOrange.svg');
            margin-bottom: 5px;
          }

          .p-tabview-nav-link {
            font-weight: 600;
            color: #FA8232;
          }
        }
      }
    }

    .p-tabview {
      .p-tabview-panels {
        padding: 0;

        .row {
          .ms-item {
            min-height: 296px;
            border-radius: 3px;
            position: relative;
            cursor: pointer;
          }

          .ms-item-main {
            height: 100%;
            padding: 16px;
            min-height: 296px;
            border: 1px solid #E4E7E9;
          }

          .ms-offer_image {
            display: flex;
            align-items: center;
            -o-object-fit: cover;
            object-fit: cover;
            justify-content: center;
            width: 100%;
            max-height: 188px;
          }

          .ms-offer_image img {
            width: 100%;
          }

          .ms-offer-buttons {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            height: 100%;
            position: absolute;
            padding: 0px 44px 0px 44px;
            visibility: hidden;
          }

          .ms-item:hover .ms-offer-buttons {
            background: rgba(0, 0, 0, 0.2);
            visibility: visible;
          }

          .ms-offer_name {
            width: 100%;
            padding-top: 8px;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
            text-overflow: ellipsis;
          }

          .ms-offer_price {
            display: flex;
            flex-wrap: wrap;
            font-style: normal;
            font-weight: 600;
            padding-top: 8px;

            .offer-price_final {
              color: #2DA5F3;
            }

            .offer-price_origin:not(:empty) {
              padding-right: 4px;
              color: #929FA5;
              text-decoration: line-through;
            }
          }

          .ms-offer-tag {
            position: absolute;
            display: flex;
            flex-direction: column;
            gap: 10px;
            z-index: 2;
          }
        }
      }
    }
  }
}
</style>
