<template>
  <header class="m-header w-100 d-flex flex-column justify-content-between align-items-center">
    <div class="w-100 d-flex justify-content-between align-items-center ms-top_header">
      <div>
        Welcome to Clicon online eCommerce store.
      </div>
      <div class="social-contact_container d-flex justify-content-between align-items-center">
        <div class="pe-3">Theo dõi:</div>
        <div class="social-contact_list d-flex gap-2">
          <div class="social-contact_item twitter"></div>
          <div class="social-contact_item facebook"></div>
          <div class="social-contact_item pinterest"></div>
          <div class="social-contact_item youtube"></div>
          <div class="social-contact_item instagram"></div>
        </div>
      </div>
    </div>
    <div class="w-100 d-flex justify-content-between align-items-center ms-middle_header">
      <div class="m-logo_container d-flex align-items-center">
        <div class="logo"></div>
        <div class="title">BRAND</div>
      </div>
      <div class="m-search_form flex-row d-flex flex-grow-1 align-items-center">
        <InputText type="search" v-model="value" class="ms-input_search" placeholder="Tìm kiếm"/>
        <div class="icon24 icon search-right search"></div>
      </div>
      <div class="m-header_actions d-flex">
        <div class="d-flex cart pointer flex-column justify-content-center ms-4 me-4 item-action">
          <div class="icon"></div>
          <div class="title">2</div>
        </div>
        <div class="d-flex love pointer flex-column align-items-center justify-content-center me-4 item-action">
          <div class="icon"></div>
        </div>
        <div class="d-flex profile pointer flex-column align-items-center justify-content-center item-action">
          <div class="icon"></div>
        </div>
      </div>
    </div>
    <div class="w-100 d-flex justify-content-between align-items-center ms-bottom_header">
      <div class="left-side d-flex align-items-center gap-3">
        <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Category"
                  class="ms-category"/>
        <div class="left-side_item align-items-center justify-content-center">
          <div class="icon map"></div>
          <div class="title">
            Track Order
          </div>
        </div>
        <div class="left-side_item align-items-center justify-content-center">
          <div class="icon compare"></div>
          <div class="title">
            So sánh
          </div>
        </div>
        <div class="left-side_item align-items-center justify-content-center">
          <div class="icon support"></div>
          <div class="title">
            Hỗ trợ khách hàng
          </div>
        </div>
      </div>
      <div class="call-now d-flex align-items-center gap-2">
        <div class="icon"></div>
        <div class="title">+1-202-555-0104</div>
      </div>
    </div>
  </header>
</template>

<script>
import InputText from 'primevue/inputtext';
import Dropdown from 'primevue/dropdown';

export default {
  components: {
    Dropdown,
    InputText
  },
  data() {
    return {
      selectedCity: null,
      cities: [
        {name: 'New York', code: 'NY'},
        {name: 'Rome', code: 'RM'},
        {name: 'London', code: 'LDN'},
        {name: 'Istanbul', code: 'IST'},
        {name: 'Paris', code: 'PRS'}
      ]
    }
  },
}
</script>


<style lang="scss" scoped>
$padding-header: 12px;
.m-header {
  flex-shrink: 0;
  background: #1B6392;

  .ms-top_header {
    padding: $padding-header $padding-base $padding-header $padding-base;
    color: #FFF;
    box-shadow: 0px -1px 0px 0px rgba(255, 255, 255, 0.16) inset;
  }

  .ms-middle_header {
    padding: $padding-header $padding-base $padding-header $padding-base;
  }

  .ms-bottom_header {
    background: #FFF;
    box-shadow: 0px -1px 0px 0px #E4E7E9 inset;
    padding: 16px $padding-base 16px $padding-base;

    .left-side {
      .ms-category {
        width: 154px;
        background: #F2F4F5;
        color: #191C1F;
      }

      .left-side_item {
        padding: 0px 6px 0px 6px;
        cursor: pointer;
        display: flex;
        height: 40px;
        line-height: 40px;
        align-items: center;
        justify-content: center;
        flex-direction: row;
        text-wrap: nowrap;

        .title {
          padding-left: 6px;
        }

        .icon {
          background-repeat: no-repeat;
          background-color: transparent;
          width: 24px;
          height: 24px;
        }

        .map {
          background-image: url('@public/assets/icons/MapPinLine.svg');
        }

        .compare {
          background-image: url('@public/assets/icons/ArrowsCounterClockwise.svg');
        }

        .support {
          background-image: url('@public/assets/icons/Headphones.svg');
        }
      }
    }

    .call-now {
      .icon {
        background-repeat: no-repeat;
        background-color: transparent;
        background-image: url('@public/assets/icons/PhoneCall.svg');
        width: 28px;
        height: 28px;
      }
    }
  }

  .social-contact_container {
    .social-contact_list {
      .social-contact_item {
        width: 16px;
        height: 16px;
        background-repeat: no-repeat;
        background-color: transparent;
      }

      .twitter {
        background-image: url('@public/assets/icons/Twitter.svg');
      }

      .facebook {
        background-image: url('@public/assets/icons/Facebook.svg');
      }

      .pinterest {
        background-image: url('@public/assets/icons/Pinterest.svg');
      }

      .youtube {
        background-image: url('@public/assets/icons/Youtube.svg');
      }

      .instagram {
        background-image: url('@public/assets/icons/Instagram.svg');
      }
    }
  }

  .m-logo_container {
    gap: 8px;
    flex-shrink: 0;
    padding: 1px 23.786px 1px 0px;
    height: 48px;

    .logo {
      width: 48px;
      height: 48px;
      background-size: contain;
      background-image: url('@public/assets/icons/logo.svg');
      background-repeat: no-repeat;
      background-color: transparent;
    }

    .title {
      font-size: 32px;
      font-style: normal;
      font-weight: 700;
      line-height: 40px; /* 125% */
      letter-spacing: -0.64px;
      color: #FFF;
    }
  }

  .m-search_form {
    max-width: 665px;
    background: #fff;
    border-radius: 4px;
    height: 40px;

    .ms-btn_search {
      border-radius: 0px;
      border-top-right-radius: 4px;
      border-bottom-right-radius: 4px;
    }

    .ms-search_form-group {
      height: 40px;
      border: 1px solid #e0e0e0;
      border-top-left-radius: 4px;
      border-bottom-left-radius: 4px;
    }

    .ms-search_form-group:focus-within {
      border: 1px solid #0073e6;
    }
  }

  .m-header_actions {
    .icon {
      width: 32px;
      height: 32px;
      flex-shrink: 0;
      background-repeat: no-repeat;
      background-color: transparent;
    }

    .cart {
      position: relative;

      .icon {
        background-image: url('@public/assets/icons/cart.svg');
      }

      .title {
        position: absolute;
        width: 16px;
        height: 16px;
        padding: 1px;
        right: 0;
        top: 0;
        font-size: 12px;
        text-align: center;
        line-height: 16px;
        color: #1B6392;
        background: #fff;
        border-radius: 50%;
      }
    }

    .love {
      .icon {
        background-image: url('@public/assets/icons/Heart.svg');
      }
    }

    .message {
      .icon {
        background-image: url('@public/assets/icons/message.svg');
      }
    }

    .profile {
      .icon {
        background-image: url('@public/assets/icons/User.svg');
      }
    }

  }
}
</style>