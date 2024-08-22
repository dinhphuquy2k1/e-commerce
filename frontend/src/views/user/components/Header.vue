<template>
  <header class="m-header w-100 d-flex flex-column justify-content-between align-items-center">
    <div class="w-100 d-flex justify-content-between align-items-center ms-top_header">
      <div>
        {{ $t('welcome_message') }}
      </div>
      <div class="social-contact_container d-flex justify-content-between align-items-center">
        <div class="pe-3">{{ $t('follow') }}:</div>
        <div class="social-contact_list d-flex gap-2">
          <div class="social-contact_item twitter"></div>
          <div class="social-contact_item facebook"></div>
          <div class="social-contact_item pinterest"></div>
          <div class="social-contact_item youtube"></div>
          <div class="social-contact_item instagram"></div>
        </div>
      </div>
    </div>
    <div class="w-100 d-flex justify-content-between gap-12 align-items-center ms-middle_header"
         :class="{ 'fixed': isScrolled }">
      <div class="icon-w32 icon-list_white pointer ms-header_list"></div>
      <div class="m-logo_container d-flex align-items-center">
        <div class="logo"></div>
        <div class="title">Noble</div>
      </div>
      <div class="m-search_form flex-row d-flex flex-grow-1 align-items-center">
        <InputText type="search" v-model="textSearch" class="ms-input_search" :placeholder="$t('search_prompt')"/>
        <div class="icon24 icon search-right search"></div>
      </div>
      <div class="m-header_actions d-flex">
        <div class="d-flex cart pointer flex-column justify-content-center me-4 item-action">
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
            {{ $t('track_order') }}
          </div>
        </div>
        <div class="left-side_item align-items-center justify-content-center">
          <div class="icon compare"></div>
          <div class="title">
            {{ $t('compare') }}
          </div>
        </div>
        <div class="left-side_item align-items-center justify-content-center">
          <div class="icon support"></div>
          <div class="title">
            {{ $t('customer_support') }}
          </div>
        </div>
      </div>
      <div class="right-side">
        <div class="call-now d-flex align-items-center gap-2">
          <div class="icon"></div>
          <div class="title">+84-325-451-325</div>
        </div>
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
      textSearch: null,
      isScrolled: false,
      cities: [
        {name: 'New York', code: 'NY'},
        {name: 'Rome', code: 'RM'},
        {name: 'London', code: 'LDN'},
        {name: 'Istanbul', code: 'IST'},
        {name: 'Paris', code: 'PRS'}
      ]
    }
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll);
  },
  beforeDestroy() {
    window.removeEventListener('scroll', this.handleScroll);
  },
  methods: {
    handleScroll() {
      this.isScrolled = window.scrollY > 50;
    },
  },
}
</script>


<style lang="scss" scoped>
$padding-header: 12px;
.m-header {
  flex-shrink: 0;
  background: var(--Secondary-700);

  .ms-top_header {
    padding: $padding-header var(--padding-base) $padding-header var(--padding-base);
    color: #FFF;
    box-shadow: 0px -1px 0px 0px rgba(255, 255, 255, 0.16) inset;
  }

  .ms-middle_header {
    padding: $padding-header var(--padding-base) $padding-header var(--padding-base);

    .ms-header_list {
      display: none;
    }
  }

  .ms-bottom_header {
    background: #FFF;
    box-shadow: 0px -1px 0px 0px #E4E7E9 inset;
    padding: 16px var(--padding-base) 16px var(--padding-base);

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
    padding: 1px 0 1px 0;
    height: 48px;

    .logo {
      width: 48px;
      height: 48px;
      background-size: contain;
      background-image: url('@public/assets/icons/logo_white.svg');
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

@media (max-width: 1200px) {
  .m-header {
    .ms-bottom_header {
      .right-side {
        display: none !important;
      }

      .left-side {
        flex: 1;
        justify-content: space-between;
      }
    }
  }
}

@media (max-width: 768px) {
  .m-header {
    .ms-bottom_header {
      display: none !important;
    }

    .ms-middle_header {

      &.fixed {
        position: fixed;
        top: 0;
        background: var(--Secondary-700);
        z-index: 100000;
      }

      .m-search_form {
        display: none !important;
      }

      .ms-header_list {
        display: block;
      }

      .m-header_actions {
        .love {
          display: none !important;
        }
      }
    }
  }
}
</style>