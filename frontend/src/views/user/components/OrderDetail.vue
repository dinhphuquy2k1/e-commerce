<template>
  <div class="ms-order-detail_wrapper">
    <div class="ms-order-detail_container">
      <div class="header">
        <div class="left-side d-flex align-items-center gap-2">
          <div class="icon-w20 icon-arrow-left_black"></div>
          <div class="title mt-1">Chi tiết đơn hàng</div>
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

    </div>
  </div>
</template>

<script>
import Timeline from 'primevue/timeline';
import Image from 'primevue/image';

export default {
  components: {
    Timeline,
    Image
  },
  data() {
    return {
      events: [
        {status: 'Đã đặt hàng', date: '15/10/2020 10:30', icon: 'pi pi-shopping-cart', color: '#9C27B0'},
        {status: 'Đã đóng gói', date: '15/10/2020 14:00', icon: 'pi pi-cog', color: '#673AB7'},
        {status: 'Đang vận chuyển', date: '15/10/2020 16:15', icon: 'pi pi-shopping-cart', color: '#FF9800'},
        {status: 'Đã giao hàng', date: '16/10/2020 10:00', icon: 'pi pi-check', color: '#607D8B'}
      ]
    };
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
  }
}
</style>
