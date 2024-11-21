<template>
  <div class="ms-order-detail_wrapper">
    <div class="ms-order-detail_container">
      <div class="header d-flex align-items-center justify-content-between">
        <div class="left-side d-flex align-items-center gap-2">
          <div class="icon-w20 icon-arrow-left_black"></div>
          <div class="title mt-1">Chi tiết đơn hàng</div>
        </div>
        <div class="right-side">
          <Button
              class="ms-btn white rounded-circle h-40 d-flex icon-only justify-content-center ms-btn_search" @click="toggle" aria-haspopup="true" aria-controls="overlay_menu">
            <div class="icon-only icon24 more"></div>
          </Button>
          <Menu ref="menu" id="overlay_menu" :model="items" :popup="true"/>
        </div>
      </div>
      <div class="ms-product-tracking">
        <div class="header d-flex justify-content-between align-items-center">
          <div class="left-side row">
            <div class="col-12 left-side-id">#96459761</div>
            <div class="col-12 d-flex gap-2">
              <span>4 sản phẩm</span>
              <span class="dot">•</span>
              <span> Đơn hàng được đặt 17/1/2021 7:32</span>
            </div>
          </div>
          <div class="right-side">
            20.000.000đ
          </div>
        </div>
        <div class="ms-order-progress">
          <Timeline :value="events" layout="horizontal" class="w-full md:w-20rem">
            <template #content="slotProps">
              {{ slotProps.item.status }}
            </template>
          </Timeline>
        </div>
      </div>
      <div class="ms-order-activity">
        <div class="ms-order-title">
          <div class="left-side d-flex align-items-center gap-2">
            <div class="title mt-1">Thông tin vận chuyển</div>
          </div>
        </div>
        <div class="content d-flex flex-column gap-3">
          <div class="item">
            <div class="left-side icon-w24 icon-checks green">

            </div>
            <div class="right-side">
              <div class="title">Đơn hàng của bạn đã được giao. Cảm ơn bạn đã mua sắm tại Clicon!</div>
              <div class="description">23/10/2021 07:32</div>
            </div>
          </div>
          <div class="item">
            <div class="left-side icon-w24 icon-user-blue blue">

            </div>
            <div class="right-side">
              <div class="title">Tài xế đã nhận hàng. Đang tiến hành giao hàng.</div>
              <div class="description">23/10/2021 07:32</div>
            </div>
          </div>
          <div class="item">
            <div class="left-side icon-w24 icon-map-pin-line_blue blue">

            </div>
            <div class="right-side">
              <div class="title">Đơn đặt hàng của bạn đã tới trung tâm.</div>
              <div class="description">23/10/2021 07:32</div>
            </div>
          </div>
          <div class="item">
            <div class="left-side icon-w24 icon-map-trifold_blue blue">

            </div>
            <div class="right-side">
              <div class="title">Đơn đặt hàng của bạn đang trên đường tới trung tâm.</div>
              <div class="description">23/10/2021 07:32</div>
            </div>
          </div>
          <div class="item">
            <div class="left-side icon-w24 icon-check-circle_green green">

            </div>
            <div class="right-side">
              <div class="title">Đơn hàng của bạn đã được xác minh thành công.</div>
              <div class="description">23/10/2021 07:32</div>
            </div>
          </div>
          <div class="item">
            <div class="left-side icon-w24 icon-notepad-blue blue">

            </div>
            <div class="right-side">
              <div class="title">Đơn đặt hàng của bạn đã được xác nhận.</div>
              <div class="description">23/10/2021 07:32</div>
            </div>
          </div>
        </div>
      </div>

      <div class="ms-order-product ms-order-activity">
        <div class="ms-order-title">
          <div class="left-side d-flex align-items-center gap-2">
            <div class="title mt-1">Sản phẩm <span>(04)</span></div>
          </div>
        </div>
      </div>

      <div class="ms-order-footer ms-order-activity">
        <div class="content row gx-4 gy-3">
          <div class="col-xxl-4">
            <div class="title">Địa chỉ thanh toán</div>
            <div class="sub-title">
              Kevin Gilbert
            </div>
            <div class="description">East Tejturi Bazar, Word No. 04, Road No. 13/x, House no. 1320/C, Flat No. 5D,
              Dhaka - 1200, Bangladesh
            </div>
            <div class="d-flex align-items-center sub-title_group gap-2 pt-2">
              <div class="sub-title">Số điện thoại:</div>
              <div class="value"> +1-202-555-0118</div>
            </div>
            <div class="d-flex align-items-center gap-2 pt-2">
              <div class="sub-title">Email:</div>
              <div class="value">dinhphuquy2001@gmail.com</div>
            </div>
          </div>
          <div class="col-xxl-4">
            <div class="title">Địa chỉ đặt hàng</div>
            <div class="sub-title">
              Kevin Gilbert
            </div>
            <div class="description">East Tejturi Bazar, Word No. 04, Road No. 13/x, House no. 1320/C, Flat No. 5D,
              Dhaka - 1200, Bangladesh
            </div>
            <div class="d-flex align-items-center sub-title_group gap-2 pt-2">
              <div class="sub-title">Số điện thoại:</div>
              <div class="value"> +1-202-555-0118</div>
            </div>
            <div class="d-flex align-items-center gap-2 pt-2">
              <div class="sub-title">Email:</div>
              <div class="value">dinhphuquy2001@gmail.com</div>
            </div>
          </div>
          <div class="col-xxl-4">
            <div class="title">Ghi chú đặt hàng</div>
            <div class="description pt-0">East Tejturi Bazar, Word No. 04, Road No. 13/x, House no. 1320/C, Flat No. 5D,
              Dhaka - 1200, Bangladesh
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
import Timeline from 'primevue/timeline';
import Image from 'primevue/image';
import Menu from 'primevue/menu';
import Button from 'primevue/button';

export default {
  components: {
    Timeline,
    Image,
    Menu,
    Button
  },
  data() {
    return {
      events: [
        {status: 'Đã đặt hàng', date: '15/10/2020 10:30', icon: 'pi pi-shopping-cart', color: '#9C27B0'},
        {status: 'Đã đóng gói', date: '15/10/2020 14:00', icon: 'pi pi-cog', color: '#673AB7'},
        {status: 'Đang vận chuyển', date: '15/10/2020 16:15', icon: 'pi pi-shopping-cart', color: '#FF9800'},
        {status: 'Đã giao hàng', date: '16/10/2020 10:00', icon: 'pi pi-check', color: '#607D8B'}
      ],
      items: [
        {
          label: 'Hủy đơn hàng',
          icon: 'pi pi-refresh'
        },
        {
          label: 'Đánh giá',
          icon: 'pi pi-upload'
        }
      ]
    };
  },
  methods: {
    toggle(event) {
      this.$refs.menu.toggle(event);
    }
  }
}
</script>

<style lang="scss">
.ms-order-detail_wrapper {
  .ms-order-detail_container {
    border-radius: 4px 4px 0px 0px;
    border: 1px solid var(--Gray-100);

    .header {
      background: var(--Gray-00);
      padding: 14px 24px;
      font-size: 16px;
      font-weight: 500;
      border-bottom: 1px solid var(--Gray-100);

      .left-side {
        text-align: left;
        color: var(--Gray-900);
        font-weight: 500;
      }
    }

    .ms-product-tracking {
      padding: 24px;

      .header {
        border-radius: 4px;
        border: 1px solid var(--Warning-200, #F7E99E);
        background: var(--Warning-50, #FDFAE7);

        .left-side {
          color: var(--Gray-700);
        }

        .right-side {
          color: var(--Secondary-500);
          font-size: 16px;
          font-style: normal;
          font-weight: 600;
        }

        .left-side-id {
          padding-bottom: 8px;
          color: var(--Gray-900);
        }
      }

      .ms-order-progress {
        .p-timeline-event-content {

        }

        .p-timeline-event-separator {
          position: relative;
        }
      }
    }

    .ms-order-title {
      padding-bottom: 24px;
      font-size: 16px;
      font-weight: 500;
      color: var(--Gray-900);
    }

    .ms-order-activity {
      border-top: 1px solid var(--Gray-100);
      padding: 32px 24px;

      .content {
        .item {
          height: 48px;
          display: flex;
          align-items: center;
          gap: 16px;

          .left-side {
            padding: 12px;
            border-radius: 2px;
            border: 1px solid var(--Success-100);
            background-repeat: no-repeat;
            background-position: center;
            width: 48px;
            height: 48px;
          }

          .green {
            background-color: var(--Success-50);
          }

          .blue {
            background-color: var(--Secondary-50);
          }

          .right-side {
            .title {
              text-align: left;
              color: var(--Gray-900);
              display: -webkit-box;
              -webkit-box-orient: vertical;
              overflow: hidden;
              text-overflow: ellipsis;
              -webkit-line-clamp: 2;
            }

            .description {
              padding-top: 8px;
              text-align: left;
              color: var(--Gray-500);
            }
          }
        }
      }
    }

    .ms-order-footer {
      text-align: left;

      .content {
        .col-xxl-4 {
          border-right: 1px solid #E4E7E9;

          &:last-child {
            border-right: none;
          }
        }

        .title {
          font-size: 16px;
          font-weight: 500;
          color: var(--Gray-900);
          padding-bottom: 24px;
        }

        .sub-title {
          font-weight: 500;
        }

        .description {
          color: var(--Gray-600);
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
          -webkit-line-clamp: 3;
          padding-top: 8px;
        }

        .value {
          color: var(--Gray-600);
          display: -webkit-box;
          -webkit-box-orient: vertical;
          overflow: hidden;
          text-overflow: ellipsis;
          -webkit-line-clamp: 3;
        }

      }
    }
  }
}
</style>
