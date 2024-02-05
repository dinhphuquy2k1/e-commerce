<template>
  <div class="ms-top_offer-wrapper">
    <div class="ms-top_offer-container d-flex flex-column">
      <div class="top-offer_header pb-24 d-flex justify-content-between align-items-center">
        <div class="left-side d-flex align-items-center gap-3">
          <span class="fs-24 fw-semibold">Ưu đãi tốt nhất</span>
          <span>Ưu đãi kết thúc trong</span>
          <span class="fs-16 time-offer">16d : 21h : 57m : 23s</span>
        </div>
        <div class="right-side d-flex align-items-center gap-3">
          <div class="title">Xem tất cả</div>
          <div class="icon"></div>
        </div>
      </div>
      <div class="top-offer_main w-100">
        <div class="row">
          <div class="col-sm-3 position-relative first-offer d-flex flex-column">
            <div class="ms-offer-tag">
              <div class="sold-out ms-offer-tag_item d-none">
                BÁN HẾT
              </div>
              <div class="sale ms-offer-tag_item">
                19% OFF
              </div>
              <div class="hot ms-offer-tag_item d-none">
                HOT
              </div>
            </div>
            <div class="ms-offer_image">
              <Image :src="require('@public/assets/images/products/drone.png')" alt="Image"/>
              <div class="ms-offer-buttons w-100"></div>
            </div>
            <div class="rating d-flex gap-2 flex-wrap">
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
            <div class="ms-offer_description text-start">
              Games built using the Xbox Series X|S development kit showcase unparalleled load times, visuals.
            </div>
            <div class="ms-offer-buttons d-flex flex-grow-1 w-100">
              <div class="d-flex gap-2 flex-wrap justify-content-between w-100">
                <Button class="ms-btn light-pink d-flex icon-only justify-content-center ms-btn_search mt-4"
                        v-tooltip.bottom="{ value: `Yêu thích`, escape: true }">
                  <div class="icon-only icon-heart_black"></div>
                </Button>
                <Button
                    class="ms-btn orange d-flex justify-content-center flex-grow-1 ms-btn_search mt-4 ps-3 pe-3 gap-2">
                  <div class="icon-only icon-simple_cart"></div>
                  <div class="fw-semibold">Thêm vào giỏ hàng</div>
                </Button>
                <Button class="ms-btn light-pink d-flex icon-only justify-content-center ms-btn_search mt-4"
                        v-tooltip.bottom="{ value: `Xem chi tiết`, escape: true }">
                  <div class="icon-only icon-eye"></div>
                </Button>
              </div>
              <div></div>
              <div></div>
            </div>
          </div>
          <div class="col-sm-9">
            <div class="row" v-for="row in 2" :key="row">
              <div class="col p-16 col-sm-3 d-flex flex-column justify-content-between" v-for="index in 4" :key="index">
                <div class="ms-offer-tag">
                  <div class="sold-out ms-offer-tag_item d-none">
                    BÁN HẾT
                  </div>
                  <div class="sale ms-offer-tag_item d-none">
                    19% OFF
                  </div>
                  <div class="hot ms-offer-tag_item">
                    HOT
                  </div>
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
        </div>
      </div>
    </div>
  </div>

</template>


<script>
import Rating from 'primevue/rating';
import Image from 'primevue/image';
import Button from 'primevue/button';

export default {
  components: {
    Image,
    Button,
    Rating
  },
  data() {
    return {
      rating: 5,
    }
  }
}
</script>

<style lang="scss" scoped>
$padding-top-bottom: 72px;
.ms-top_offer-wrapper {
  padding: 0 $padding-base 0 $padding-base;
  .ms-top_offer-container {
    padding: $padding-top-bottom 0 $padding-top-bottom 0;

    .top-offer_header {
      .left-side {
        .time-offer {
          display: flex;
          padding: 6px 12px;
          align-items: center;
          gap: 6px;
          border-radius: 2px;
          background: #F3DE6D;
        }
      }

      .right-side {
        cursor: pointer;

        .title {
          color: #2DA5F3;
          font-size: 14px;
          font-style: normal;
          font-weight: 600;
          line-height: 25px;
        }

        .icon {
          width: 20px;
          height: 20px;
          background-repeat: no-repeat;
          background-color: transparent;
          background-image: url('@public/assets/icons/ArrowRightBlue.svg');
        }
      }
    }

    .top-offer_main {
      .row {
        .col-sm-9 {
          border: 1px solid #E4E7E9;
        }

        .row {
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

          .col {
            min-height: 296px;
            border-right: 1px solid #E4E7E9;
            position: relative;
          }

          .col:hover {
            cursor: pointer;

            .ms-offer-buttons {
              background: rgba(0, 0, 0, 0.20);
              visibility: visible;
            }
          }

          .col:last-child {
            border-right: none;
          }
        }

        .row:first-child {
          border-bottom: 1px solid #E4E7E9;
        }
      }

      .ms-offer-tag {
        position: absolute;
        display: flex;
        flex-direction: column;
        gap: 10px;

        .ms-offer-tag_item {
          z-index: 2;
          border-radius: 2px;
          padding: 5px 10px;
          font-style: normal;
          font-weight: 600;
          width: max-content;
        }

        .sold-out {
          color: #fff;
          background: #929FA5;
        }

        .sale {
          color: #191C1F;
          background: #EFD33D;
        }

        .hot {
          color: #fff;
          background: #EE5858;
        }
      }

      .ms-offer_image {
        display: flex;
        align-items: center;
        object-fit: cover;
        justify-content: center;
        width: 100%;
        max-height: 188px;
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
        .offer-price_origin {
          color: #929FA5;
          text-decoration: line-through;
        }

        .offer-price_origin:not(:empty) {
          padding-right: 4px;
        }

        .offer-price_final {
          color: #2DA5F3;
        }

        display: flex;
        flex-wrap: wrap;
        font-style: normal;
        font-weight: 600;
        padding-top: 8px;
      }

      .first-offer {
        cursor: pointer;
        gap: 12px;
        padding: 16px;
        border: 1px solid #E4E7E9;
        border-right: none;

        .ms-offer_image {
          max-width: 100%;
          min-height: 268px;
          position: relative;

          .ms-offer-buttons {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            height: 100%;
            top: 0;
            position: absolute;
            padding: 0px 44px 0px 44px;
            visibility: hidden;
            background: rgba(0, 0, 0, 0.20);
          }
        }

        .ms-offer_description {
          color: #5F6C72;
          display: -webkit-box;
          -webkit-line-clamp: 3;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
        }

        .ms-offer-buttons {
          position: absolute;
          bottom: 24px;
          left: 0;
          padding: 0px 16px;
        }

        .quantity-rating {
          color: #77878F;
        }
      }

      .first-offer:hover {
        .ms-offer_image {
          .ms-offer-buttons {
            visibility: visible;
          }
        }
      }
    }
  }
}

</style>