<template>
  <header class="m-header w-100 d-flex justify-content-between align-items-center">
    <div class="m-header_left d-flex align-items-center gap-5">
      <div class="m-header-logo">
        <img :src="require('@public/assets/icons/logo.svg')" alt="">
      </div>
      <div class="m-header-menu d-flex gap-3">
        <div v-for="item in menus">
          {{ item }}
        </div>
      </div>
    </div>
    <div class="m-header_right d-flex align-items-center gap-3">
      <div class="m-header-search">
        <div class="m-search_form flex-row d-flex flex-grow-1 align-items-center">
          <InputText type="search" class="ms-input_search" :placeholder="$t('search_prompt')"/>
          <div class="icon24 icon search-right search"></div>
        </div>
      </div>
      <div class="d-flex align-items-center justify-content-between flex-1">
        <div class="group-profile d-flex align-items-center gap-3">
          <div class="d-flex gap-3 align-items-center group-icons">
            <div class="icon-heart_black icon-w24"></div>
            <div class="icon-simple_cart-black icon-w24"></div>
          </div>
          <div class="group_user-info">
            <Button type="button" icon="pi pi-ellipsis-v" @click="toggle" aria-haspopup="true"
                    class="ms-btn bg-transparent"
                    aria-controls="overlay_menu">
              <div class="d-flex gap-2 align-items-center">
                <div class="icon icon-w40">
                  <img :src="require('@public/assets/images/avatar/162971076.jpeg')" class="m-user_avatar" alt="">
                </div>
                <div class="user-info">Phú Quý</div>
              </div>
            </Button>
            <Menu ref="menu" id="overlay_menu" :model="userActions" :popup="true"/>
          </div>
        </div>
        <div class="icon24 icon search search-mobile"></div>
      </div>
    </div>
  </header>
</template>

<script>
import InputText from 'primevue/inputtext';
import Dropdown from 'primevue/dropdown';
import Menu from 'primevue/menu';
import Button from 'primevue/button';

export default {
  components: {
    Dropdown,
    InputText,
    Menu,
    Button,
  },
  data() {
    return {
      menus: [
        'Men',
        'Women',
        'Kids',
        'Shop',
        'Contact us'
      ],
      userActions: [
        {
          label: 'Thông tin',
          icon: 'pi pi-refresh'
        },
        {
          label: 'Đăng xuất',
          icon: 'pi pi-upload'
        }
      ]
    }
  },
  methods: {
    toggle(event) {
      this.$refs.menu.toggle(event);
    }
  },
}
</script>


<style lang="scss" scoped>
.m-header {
  flex-shrink: 0;
  background: #FFFFFF;
  height: 80px;
  padding-left: var(--padding-base);
  padding-right: var(--padding-base);

  .m-search_form {
    max-width: 665px;
    background: var(--Gray-50);
    border-radius: 4px;
    height: 40px;

    &:focus {
      border-color: red;
    }

    .p-inputtext {
      background: transparent;
    }

    .ms-btn_search {
      border-radius: 0px 4px 4px 0px;
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

  .m-header_right {
    .group-profile {
      & ~ .search-mobile {
        display: none;
      }

      .group_user-info {
        .ms-btn {
          width: 120px;
          height: 40px;
        }

        .m-user_avatar {
          width: 40px;
          height: 40px;
          border-radius: 50%;
        }

        .user-info {
          color: var(--Gray-600);
          font-size: 16px;
        }
      }
    }
  }
}

@media (max-width: 768px) {
  .m-header {
    .m-header_left {
      display: none !important;
    }

    .m-header_right {
      flex: 1;

      .m-header-search {
        display: none;
      }

      .group-profile {
        .group-icons {
          display: none !important;
        }

        & ~ .search-mobile {
          display: block;
        }
      }
    }
  }
}

</style>