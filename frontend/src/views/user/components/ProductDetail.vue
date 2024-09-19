<template>
  <div class="ms-product-detail_wrapper">
    <BreadCrumb></BreadCrumb>
    <div class="ms-product-detail_container">
      <div class="ms-product-view_container row d-flex g-4">
        <div class="ms-product-view_preview d-flex flex-column col-md-6 col-12 flex-grow-1">
          <!--          <div class="ms-product-image-main d-flex align-items-center justify-content-center flex-grow-1">-->
          <!--            <Image :src="require('@public/assets/images/products/drone.png')" class="flex-grow-1" width="300"-->
          <!--                   height="300" preview-->
          <!--                   alt="Image"/>-->
          <!--          </div>-->
          <div class="ms-product-images flex-1 d-flex">
            <Galleria :value="products" :responsiveOptions="responsiveOptions" :numVisible="5" :circular="true"
                      :containerClass="['ms-product-images_galleria lr-slider-galleria d-flex flex-1', {'ms-product-images_galleria_no-thumbnail': products.length <= 1}]">
              <template #item="slotProps">
                <Image :src="require('@public/assets/images/products/'+ slotProps.item.image)"
                       alt="Image" preview/>
              </template>
              <template #thumbnail="slotProps">
                <div class="images_galleria-item_thumbnail">
                  <Image :src="require('@public/assets/images/products/'+ slotProps.item.image)"
                         alt="Image"/>
                </div>
              </template>
            </Galleria>
            <!--            <Carousel :value="products" :page="pageImage" :numVisible="5" :numScroll="1" :responsiveOptions="responsiveOptions"-->
            <!--                      @update:page="changeImage"-->
            <!--                      class="lr-slider-carousel">-->
            <!--              <template #item="slotProps">-->
            <!--                <div class="d-flex flex-column align-items-center justify-content-center ms-image-sub_item">-->
            <!--                  <div class="ms-image-box pointer">-->
            <!--                    <Image :src="require('@public/assets/images/products/'+ slotProps.data.image)"-->
            <!--                           alt="Image"/>-->
            <!--                  </div>-->
            <!--                </div>-->
            <!--              </template>-->
            <!--            </Carousel>-->
          </div>
        </div>
        <div class="ms-product-view_detail col-md-6 col-12">
          <div class="rating d-flex gap-2 flex-wrap mt-3">
            <div class="star-rating">
              <Rating v-model="rating" readonly :cancel="false"/>
            </div>
            <div class="quantity-rating">
              (52,677)
            </div>
          </div>
          <div class="text-start ms-title">
            2020 Apple MacBook Pro with Apple M1 Chip (13-inch, 8GB RAM, 256GB SSD Storage) - Space Gray
          </div>
          <div class="ms-info-box">
            <div class="row gy-2 gx-2">
              <div class="col-6 d-flex gap-2">
                <div class="title">Mã hàng:</div>
                <div class="value">A264671</div>
              </div>
              <div class="col-6 d-flex gap-2">
                <div class="title">Tình trạng:</div>
                <div class="value availability">Còn hàng</div>
              </div>
              <div class="col-6 d-flex gap-2">
                <div class="title">Thương hiệu:</div>
                <div class="value">Apple</div>
              </div>
              <div class="col-6 d-flex gap-2">
                <div class="title">Danh mục:</div>
                <div class="value">Electronics Devices</div>
              </div>
            </div>
          </div>
          <div class="ms-price-box d-flex gap-3 align-items-center flex-wrap">
            <div class="ms-price-discount">25.000.000đ</div>
            <div class="ms-price-origin">20.000.000đ</div>
            <div>
              <Tag value="21% OFF" class="sale ms-offer-tag_item"></Tag>
            </div>
          </div>

          <div class="ms-option-box mt-4">
            <div class="row g-3">
              <!--              <div class="col-6">-->
              <!--                <div class="ms-option-title mb-2">-->
              <!--                  Màu sắc-->
              <!--                </div>-->

              <!--                <div class="ms-option-list">-->
              <!--                  <ScrollPanel>-->
              <!--                    <div class="d-flex gap-3">-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                      <div class="wm-32 rounded-circle" style="background: red"></div>-->
              <!--                    </div>-->
              <!--                  </ScrollPanel>-->
              <!--                </div>-->
              <!--              </div>-->
              <div class="col-6 ">
                <div class="ms-option-title mb-2">
                  Màu sắc
                </div>
                <div class="ms-option-list">
                  <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Category"
                            class="ms-category"/>
                </div>
              </div>
            </div>
          </div>

          <div class="group-button d-flex row gy-2 gx-3">
            <div class="col-xxl-3">
              <InputNumber v-model="value" showButtons buttonLayout="horizontal" class="w-100 h-36"
                           decrementButtonClassName="p-button-secondary" incrementButtonClassName="p-button-secondary">
                <template #incrementbuttonicon>
                  <span class="pi pi-plus"/>
                </template>
                <template #decrementbuttonicon>
                  <span class="pi pi-minus"/>
                </template>
              </InputNumber>
            </div>
            <div class="col-xxl-6">
              <Button
                  class="ms-btn orange d-flex justify-content-center flex-grow-1 ms-btn_search w-100 ps-3 pe-3 gap-2">
                <div class="icon-only icon-simple_cart"></div>
                <div class="fw-semibold">Thêm vào giỏ hàng</div>
              </Button>
            </div>

            <div class="col-xxl-3 d-flex">
              <Button
                  class="ms-btn border-orange d-flex justify-content-center flex-grow-1 ps-3 pe-3 gap-2">
                <div class="fw-semibold">Mua ngay</div>
              </Button>
            </div>
          </div>

          <div class="sub-group-button d-flex gy-2 justify-content-between flex-wrap gap-3">
            <div class="gap-4 d-flex ms-left-side">
              <div class="item">
                <div class="icon icon-heart_black"></div>
                <div class="title truncate-text">Yêu thích</div>
              </div>
              <div class="item">
                <div class="icon icon-compare"></div>
                <div class="title truncate-text">So sánh</div>
              </div>
            </div>
            <div class="ms-right-side d-flex gap-3 align-items-center justify-content-end">
              <div>Chia sẻ:</div>
              <div class="d-flex align-items-center gap-2">
                <Image :src="require('@public/assets/icons/Copy.svg')" width="20" alt="Image"/>
                <Image :src="require('@public/assets/icons/Facebook_Orange.svg')" width="20" alt="Image"/>
                <Image :src="require('@public/assets/icons/Twitter_Black.svg')" width="20" alt="Image"/>
                <Image :src="require('@public/assets/icons/Pinterest_Black.svg')" width="20" alt="Image"/>
              </div>
            </div>
          </div>

          <div class="ms-pay-group d-flex flex-column">
            <div class="text-start">Đảm bảo 100% thanh toán an toàn</div>
            <div class="ms-pay-images d-flex gap-3 align-items-center">
              <Image :src="require('@public/assets/icons/visa_updated_1.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/swish.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/paypal.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/applepay.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/bitpay_updated_1.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/googlepay.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/mobilepay-online.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/tbibank.svg')" width="50" alt="Image"/>
              <Image :src="require('@public/assets/icons/trustly.svg')" width="50" alt="Image"/>
            </div>
          </div>
        </div>
      </div>
      <div class="ms-product-information_container mb-5">
        <TabView class="ms-product-information-tab-view">
          <TabPanel header="Mô tả">
            <div class="ms-description-box row">
              <div class="ms-description-left-side col-xxl-9 row">
                <div class="col-xxl-8">
                  <div class="title">Mô tả</div>
                  <div class="content">
                    <ScrollPanel style="width: 100%; height: 200px; text-align: left">
                      <p>
                        MacBook Pro mạnh mẽ nhất từng có ở đây. Với chip M1 Pro hoặc M1 Max cực nhanh — silicon đầu tiên
                        của Apple được thiết kế dành cho các chuyên gia — bạn sẽ có được hiệu năng đột phá và thời lượng
                        pin đáng kinh ngạc. Thêm vào đó là màn hình Liquid Retina XDR tuyệt đẹp, camera và âm thanh tốt
                        nhất từng có trên máy tính xách tay Mac và tất cả các cổng bạn cần. Chiếc máy tính xách tay đầu
                        tiên thuộc loại này, chiếc MacBook Pro này là một con quái vật. M1 Pro đưa hiệu năng vượt trội
                        của kiến ​​trúc M1 lên một tầm cao mới dành cho người dùng chuyên nghiệp.
                        <br>
                        Ngay cả những dự án đầy tham vọng nhất cũng có thể được xử lý dễ dàng với tối đa 10 lõi CPU, tối
                        đa 16 lõi GPU, Công cụ thần kinh 16 lõi và các công cụ mã hóa và giải mã chuyên dụng hỗ trợ
                        codec H.264, HEVC và ProRes.
                      </p>
                    </ScrollPanel>
                  </div>
                </div>
                <div class="col-xxl-4">
                  <div class="title">Tính năng</div>
                  <div class="content d-flex flex-column">
                    <div class="item">
                      <div class="icon icon-medal"></div>
                      <div class="text">Bảo hành 1 năm miễn phí</div>
                    </div>
                    <div class="item">
                      <div class="icon icon-truck"></div>
                      <div class="text">Miễn phí vận chuyển & Giao hàng Nhanh</div>
                    </div>
                    <div class="item">
                      <div class="icon icon-handshake"></div>
                      <div class="text">Đảm bảo hoàn tiền 100%</div>
                    </div>
                    <div class="item">
                      <div class="icon icon-head-phone_orange"></div>
                      <div class="text">Hỗ trợ khách hàng 24/7</div>
                    </div>
                    <div class="item">
                      <div class="icon icon-credit_card_orange"></div>
                      <div class="text">Phương thức thanh toán an toàn</div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="ms-description-right-side col-xxl-3">
                <div class="title">Thông tin vận chuyển</div>
                <div class="content">
                  <div class="item">
                    <div class="icon">Chuyển phát nhanh:</div>
                    <div class="text">2-4 ngày</div>
                  </div>
                  <div class="item">
                    <div class="icon">Vận chuyển địa phương:</div>
                    <div class="text">3-4 ngày</div>
                  </div>
                  <div class="item">
                    <div class="icon">Vận chuyển thường:</div>
                    <div class="text">4-6 ngày</div>
                  </div>
                  <div class="item">
                    <div class="icon">Vận chuyển quốc tế:</div>
                    <div class="text">tối đa 1 tuần</div>
                  </div>
                </div>
              </div>
            </div>
          </TabPanel>
          <TabPanel :header="$t('rating')">
            <div class="ms-rating-box row">
              <div class="ms-rating-left-side">
                <div class="title">{{ $t('comment_about', {name: 'John Doe'}) }}</div>
                <div class="content mt-4 d-flex flex-column gap-3">
                  <div class="rc-form review-form row g-4">
                    <div class="col-md-4">
                      <Textarea v-model="value" rows="4" cols="30"/>
                    </div>
                    <div class="col-md-8 d-flex">
                      <div class="flex-1 d-flex">
                        <div class="row gy-4 g-4 flex-1">
                          <div class="col-6">
                            <InputText type="text" :placeholder="$t('full_name')"/>
                          </div>
                          <div class="col-6">
                            <InputText type="text" :placeholder="$t('purchase_phone_number')"/>
                          </div>
                          <div class="col-6">
                            <InputText type="text" :placeholder="$t('email')"/>
                          </div>
                          <div class="col d-flex align-items-center">
                            <div class="d-flex align-items-center gap-3">
                              {{ $t('your_rating') }}:
                              <Rating v-model="value" :cancel="false"/>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="rc-form-button">
                    <div class="row g-0">
                      <div class="col-6 d-flex align-items-center">{{ $t('comment_requirements') }}</div>
                      <div class="col-6 d-flex justify-content-end">
                        <div>
                          <Button
                              class="ms-btn border-orange d-flex justify-content-center flex-grow-1 ps-3 pe-3 gap-2">
                            <div class="fw-semibold">{{ $t('submit_comment') }}</div>
                          </Button>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="rc-form-item">
                    <CommentView :comments="comments"/>
                  </div>
                </div>
              </div>
            </div>
          </TabPanel>
          <TabPanel header="Thông tin thêm">
            <p class="m-0">
              Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam
              rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt
              explicabo. Nemo enim
              ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
              qui ratione voluptatem sequi nesciunt. Consectetur, adipisci velit, sed quia non numquam eius modi.
            </p>
          </TabPanel>
          <TabPanel header="Về người bán">
            <p class="m-0">
              At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti
              atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique
              sunt in culpa qui
              officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et
              expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo
              minus.
            </p>
          </TabPanel>
        </TabView>
      </div>

      <div class="ms-product-relationship">
        <div class="row">
          <div class="col-xl-3 mb-3 col-md-12" v-for="item in 4">
            <div class="ms-product-relationship-mobile d-none">
              <div class="text-start title mb-3">FLASH SALE TODAY</div>
              <Carousel :value="products" :page="pageImage" :numVisible="2" :numScroll="1"
                        :responsiveOptions="responsiveProductRelationshipOptions"
                        :showIndicators="false"
                        @update:page="changeImage"
                        class="lr-slider-carousel">
                <template #item="slotProps">
                  <div class="ms-box-item d-flex flex-column gap-3 pointer">
                    <div class="ms-box-item_left">
                      <div class="ms-box-image">
                        <Image :src="require('@public/assets/images/products/Image.png')" alt="Image"/>
                      </div>
                    </div>
                    <div class="ms-box-item_right d-flex flex-column align-items-between justify-content-between">
                      <div class="title text-start truncate-text-2">Bose Sport Earbuds - Wireless Earphones - Bluetooth
                        In
                        Ear
                      </div>
                      <div class="price text-start">20.000.000đ</div>
                    </div>
                  </div>
                </template>
              </Carousel>
            </div>
            <div class="ms-product-relationship-desktop">
              <div class="text-start title mb-3">FLASH SALE TODAY</div>
              <div class="d-flex flex-column gap-3 ms-box-items">
                <div class="ms-box-item d-flex gap-3 pointer" v-for="item in products" :key="item">
                  <div class="ms-box-item_left">
                    <div class="ms-box-image">
                      <Image :src="require('@public/assets/images/products/Image.png')" alt="Image"/>
                    </div>
                  </div>
                  <div class="ms-box-item_right d-flex flex-column align-items-between justify-content-between">
                    <div class="title text-start truncate-text-2">Bose Sport Earbuds - Wireless Earphones - Bluetooth In
                      Ear
                    </div>
                    <div class="price text-start">20.000.000đ</div>
                  </div>
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
import InputNumber from 'primevue/inputnumber';
import BreadCrumb from '@/views/user/components/BreadCrumb.vue';
import Image from 'primevue/image';
import Carousel from 'primevue/carousel';
import Galleria from 'primevue/galleria';
import Button from 'primevue/button';
import Textarea from 'primevue/textarea';
import InputText from 'primevue/inputtext';
import CommentView from '@/views/user/components/CommentView.vue';
import Dropdown from 'primevue/dropdown';
import Rating from 'primevue/rating';
import Tag from 'primevue/tag';
import TabView from 'primevue/tabview';
import TabPanel from 'primevue/tabpanel';
import ScrollPanel from 'primevue/scrollpanel';

export default {
  components: {
    BreadCrumb,
    Image,
    Carousel,
    Button,
    Rating,
    Tag,
    InputNumber,
    TabView,
    TabPanel,
    ScrollPanel,
    Galleria,
    Textarea,
    InputText,
    CommentView,
    Dropdown,
  },
  data() {
    return {
      rating: 5,
      value: 1,
      pageImage: 0,
      comments: [
        {
          'content': 'test',
          'child': [
            {
              'content': '123',
            },
            {
              'content': '456'
            },
            {
              'content': '456'
            }
          ]
        },
        {
          'content': 'comment 2',
          'child': [],
        }
      ],
      products: [
        {
          id: '1000',
          code: 'f230fh0g3',
          name: 'Bamboo Watch',
          description: 'Product Description',
          image: 'Rectangle 20.png',
          price: 65,
          category: 'Accessories',
          quantity: 24,
          inventoryStatus: 'INSTOCK',
          rating: 5
        },
        {
          id: '1001',
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

      ],
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
          numVisible: 3,
          numScroll: 1
        },
        {
          breakpoint: '575px',
          numVisible: 2,
          numScroll: 1
        }
      ],
      responsiveProductRelationshipOptions: [
        {
          breakpoint: '992px',
          numVisible: 2,
          numScroll: 1
        },
        {
          breakpoint: '767px',
          numVisible: 2,
          numScroll: 1
        },
        {
          breakpoint: '420px',
          numVisible: 1,
          numScroll: 1
        },
      ]
    }
  },
  methods: {
    changeImage() {
      console.log(this.pageImage)
    }
  }
}
</script>

<style lang="scss">
.ms-product-detail_container {
  padding: 0 var(--padding-base);

  .ms-product-information_container {
    .ms-product-information-tab-view {
      border: 1px solid var(--Gray-100);
      border-radius: 4px;

      .ms-description-box, .ms-rating-box {
        .title {
          color: var(--Gray-900);
          font-size: 16px;
          font-weight: 600;
          text-align: left;
          padding-bottom: 12px;
        }

        .ms-description-left-side {
          .content {
            color: var(--Gray-600);
            gap: 12px;

            .item {
              display: flex;
              align-items: center;
              gap: 4px;

              .icon {
                width: 24px;
                height: 24px;
              }

              .text {
                text-align: left;
                color: var(--Gray-900);
              }
            }
          }
        }

        .ms-description-right-side {
          border-left: 1px solid #E4E7E9;
          padding-left: 24px;

          .content {
            text-align: left;
            color: var(--Gray-600);
            display: flex;
            flex-direction: column;
            gap: 16px;

            .item {
              display: flex;
              gap: 8px;
              height: 24px;
              align-items: center;

              .icon {
                color: var(--Gray-900);
                font-weight: 500;
              }
            }
          }
        }
      }

      ol, ul, dl {
        margin: unset;
        padding: unset;
      }

      .p-tabview-nav {
        box-sizing: border-box;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
        border-bottom: 1px solid var(--Gray-100);
        background: var(--Gray-00);
        margin: unset;
        display: flex;
        justify-content: center;

        li:not(.p-highlight):not(.p-disabled):hover .p-tabview-nav-link {
          border-color: #FA8232;
          color: var(--Gray-900);
          border-bottom-width: 2px;
        }

        li.p-highlight .p-tabview-nav-link {
          color: var(--Gray-900);
          border-color: #FA8232;
          border-bottom-width: 2px;
        }

        .p-tabview-nav-link {
          //border-bottom: 1px solid #fff;
          padding: 20px;
          color: #707070;
          font-weight: 500;
        }
      }
    }
  }

  .ms-product-view_container {
    padding: 32px 0;

    .ms-product-view_preview {
      .ms-product-images_galleria {

        &.ms-product-images_galleria_no-thumbnail {
          .p-galleria-thumbnail-wrapper {
            display: none;
          }
        }

        .p-galleria-content {
          display: flex;
          flex: 1;
        }

        .p-galleria-item-wrapper {
          height: 400px;
          max-height: 400px;
          border: 1px solid var(--Gray-100, #E4E7E9);
          padding: 16px;
          border-radius: 4px;
          margin-bottom: 24px;

          .p-image {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;

            img {
              width: auto;
              height: auto;
              max-height: 100%;
              object-fit: contain;
              max-width: 100%;
            }
          }
        }

        .p-galleria-thumbnail-wrapper {
          display: flex;

          .p-galleria-thumbnail-container {
            flex: 1;
            max-height: 100%;

            .p-galleria-thumbnail-items-container {
              height: 100%;

              .p-galleria-thumbnail-items {
                height: 120px;
                min-height: 120px;
                max-height: 120px;

                .p-galleria-thumbnail-item {
                  max-height: 100%;
                  height: 100%;
                  display: flex;
                  padding: 8px 0 8px 8px;

                  &.p-galleria-thumbnail-item-start {
                    padding-left: 0;
                  }

                  &.p-galleria-thumbnail-item-end {
                    padding-right: 0;
                  }

                  .p-galleria-thumbnail-item-content {
                    height: 100%;
                    border-radius: 2px;
                    border: 1px solid var(--Gray-100, #E4E7E9);
                    flex-grow: 1;

                    .images_galleria-item_thumbnail {
                      display: flex;
                      height: 100%;
                      align-items: center;
                      justify-content: center;
                      padding: 2px;

                      .p-image {
                        height: 100%;
                        max-height: 100%;

                        img {
                          height: 100%;
                          max-height: 100%;
                        }
                      }
                    }

                  }

                  &.p-galleria-thumbnail-item-current {
                    .p-galleria-thumbnail-item-content {
                      border: 2px solid var(--Primary-500, #FA8232);
                    }
                  }
                }
              }
            }
          }
        }

        &.ms-product-images_galleria_no-thumbnail {
          .p-galleria-thumbnail-wrapper {
            display: none;
          }

          .p-galleria-item-wrapper {
            flex: 1;
            max-height: 600px;
          }
        }
      }

      .ms-product-image-main {
        max-height: 464px;
        padding: 16px;
        border-radius: 4px;
        border: 1px solid var(--Gray-100, #E4E7E9);

        .p-image {
          display: flex;
          height: 100%;
          align-items: center;
          justify-content: center;
        }

        .p-image-preview-container {
          &:hover {
            .p-image-preview-indicator {
              //background: transparent;
              border-radius: 4px;
            }
          }
        }
      }

      .ms-product-image-sub {
        height: 96px;

        .p-carousel-indicators {
          display: none;
        }

        .ms-image-sub_item {
          height: 100%;
          padding: 3px;

          .ms-image-box {
            max-height: 100%;
            height: 100%;
            width: 100%;
            padding: 16px;
            border-radius: 2px;
            border: 1px solid var(--Gray-100, #E4E7E9);
            display: flex;
            align-items: center;
            justify-items: center;

            .p-image {
              flex: 1;
              display: flex;
              align-items: center;
              justify-items: center;

              img {
                height: 65px;
                width: 65px;
                margin: auto;
              }
            }
          }

        }
      }
    }

    .ms-title {
      margin-top: 8px;
    }

    .ms-info-box {
      margin-top: 16px;

      .title {
        color: var(--Gray-600, #5F6C72);
        font-size: 14px;
        font-style: normal;
        font-weight: 400;
      }

      .value {
        color: var(--Gray-900, #191C1F);
        font-weight: 600;

        &.availability {
          color: var(--Success-500, #2DB224);
        }
      }
    }

    .ms-price-box {
      padding: 24px 0;
      border-bottom: 1px solid #E4E7E9;

      .ms-price-discount {
        color: var(--Secondary-500, #2DA5F3);
        font-size: 24px;
        font-style: normal;
        font-weight: 600;
      }

      .ms-price-origin {
        color: var(--Gray-500, #77878F);
        font-style: normal;
        font-weight: 400;
        line-height: 24px; /* 133.333% */
        text-decoration: line-through;
        font-size: 18px;
      }
    }

    .group-button {
      margin-top: 24px;
      margin-bottom: 24px;
    }

    .sub-group-button {
      padding-top: 24px;
      padding-bottom: 24px;

      .ms-left-side, .ms-description-right-side {
        .item {
          display: flex;
          align-items: center;
          gap: 8px;

          .icon {
            width: 24px;
            height: 24px;
          }

          .title {

          }
        }
      }
    }

    .ms-pay-group {
      padding: 20px;
      border-radius: 3px;
      border: 1px solid var(--Gray-100, #E4E7E9);
      background: var(--Gray-00, #FFF);
      gap: 12px;
    }
  }

  .ms-product-relationship {
    .ms-product-relationship-mobile, .ms-product-relationship-desktop {
      & > .title {
        color: var(--Gray-900, #191C1F);
        font-size: 16px;
        font-style: normal;
        font-weight: 600;
      }
    }

    .ms-box-item {
      padding: 12px;
      border-radius: 3px;
      border: 1px solid var(--Gray-100, #E4E7E9);
      background: var(--Gray-00, #FFF);

      .ms-box-item_left {
        .ms-box-image {
          width: 100px;
        }
      }

      .ms-box-item_right {
        .title {
        }
      }
    }
  }
}

@media (max-width: 992px) {
  .ms-product-relationship {
    .ms-product-relationship-mobile {
      display: block !important;

      .p-carousel-items-container {
        .p-carousel-item {
          padding-left: 8px;
          padding-right: 8px;

          &.p-carousel-item-start {
            padding-left: unset;
          }

          &.p-carousel-item-end {
            padding-right: unset;
          }
        }
      }

      .ms-box-item {
        flex-direction: column !important;

        .ms-box-item_left {
          display: flex;
          justify-content: center;

          .ms-box-image {
            display: flex;
            justify-content: center;
            width: 200px;
          }
        }

        .ms-box-item_right {
          .title {
            margin-bottom: 10px;
          }
        }
      }
    }

    .ms-product-relationship-desktop {
      display: none;

      .ms-box-items {
        flex-direction: row !important;

        .ms-box-item {
          flex-direction: column !important;

          .ms-box-item_left {
            display: flex;
            justify-content: center;

            .ms-box-image {
              width: 200px;
            }
          }

          .ms-box-item_right {
            .title {
              margin-bottom: 10px;
            }
          }
        }
      }
    }

  }
}

@media (max-width: 1200px) {
  .ms-product-relationship-desktop {
    .ms-box-items {
      flex-direction: row !important;

      .ms-box-item {
        flex-direction: column !important;

        .ms-box-item_left {
          display: flex;
          justify-content: center;

          .ms-box-image {
            width: 200px;
            display: flex;
            justify-content: center;
          }
        }

        .ms-box-item_right {
          .title {
            margin-bottom: 10px;
          }
        }
      }
    }
  }
}

@media (max-width: 576px) {
  .ms-product-relationship-mobile {
    .ms-box-image {
      max-width: 150px;
    }
  }
}
</style>
