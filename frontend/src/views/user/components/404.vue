<template>
  <div class="ms-404-wrapper d-flex justify-content-center align-items-center">
    <div class="ms-404-container">
      <Image :src="require('@public/assets/images/404.png')" class="flex-grow-1"
             alt="Image"/>
      <div class="ms-404-content d-flex flex-column align-items-center justify-content-center">
        <div class="title">{{ $t('not_found') }}</div>
        <div class="description text-center">{{ $t('error_occurred') }} {{ $t('request_not_found') }}<br>
          {{ $t('link_broken') }}
        </div>
        <div class="buttons d-flex gap-4 ms-4 justify-content-center  align-items-center">
          <Button
              @click="$router.go(-1)"
              class="ms-btn orange ms-btn_search text-center d-flex justify-content-center ps-3 pe-3">
            <div class="d-flex align-items-center gap-1">
              <div class="icon-w20 icon-arrow-left_white"></div>
              <div>{{ $t('go_back')}}</div>
            </div>
          </Button>
          <Button
              class="ms-btn border-orange_white ms-btn_search text-center d-flex justify-content-center ps-3 pe-3">
            <div class="d-flex align-items-center gap-1">
              <div class="icon-w20 icon-home_orange"></div>
              <div class="">{{ $t('back_home') }}</div>
            </div>
          </Button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Image from 'primevue/image';
import Button from 'primevue/button';

export default {
  components: {
    Image,
    Button
  }
}
</script>

<style lang="scss">
.ms-404-wrapper {
  padding: 50px 0;

  .ms-404-container {
    .title {
      color: var(--Gray-900);
      font-size: 24px;
      font-style: normal;
      font-weight: 600;

    }

    .description {
      padding: 24px 0;
      color: var(--Gray-700);
      font-size: 16px;
      font-style: normal;
      line-height: 24px;
      font-weight: 400;
    }

    .buttons {
      .border-orange_white {
        &:hover {
          .icon-home_orange {
            background-image: url('@public/assets/icons/HouseWhite.svg');
          }
        }
      }
    }
  }
}
</style>
