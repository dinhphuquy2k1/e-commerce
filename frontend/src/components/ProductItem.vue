<template>
  <div class="ms-product-item">
    <div class="top-offer_item">
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
      <div class="rating d-flex gap-2 flex-wrap mt-3">
        <div class="star-rating">
          <Rating v-model="data.rating" readonly :cancel="false"/>
        </div>
        <div class="quantity-rating">
          (52,677)
        </div>
      </div>
      <div class="ms-offer_name text-start">
        Bose Sport Earbuds - Wireless Earphones - Bluetooth In Earasdadasdasdasdas
      </div>
      <div class="ms-offer_price text-start">
        <span class="offer-price_origin">25.000.000đ</span>
        <span class="offer-price_final">20.000.000đ</span>
      </div>
    </div>
  </div>
</template>

<script>
import Tag from 'primevue/tag';
import Image from 'primevue/image';
import Button from 'primevue/button';
import Rating from 'primevue/rating';

export default {
  props: {
    data: {

    }
  },
  components: {
    Tag,
    Image,
    Button,
    Rating,
  }
}
</script>

<style lang="scss">
.ms-product-item {
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

  .top-offer_item {
    padding: 12px;
    border-radius: 4px;
    border: 1px solid #E4E7E9;

    .ms-offer-buttons {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      height: 100%;
      position: absolute;
      padding: 0 44px 0 44px;
      visibility: hidden;
    }

    &:hover {
      cursor: pointer;

      .ms-offer-buttons {
        background: rgba(0, 0, 0, 0.20);
        visibility: visible;
      }
    }
  }
}

</style>
