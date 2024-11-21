<template>
  <div class="ms-track-order">
    <div class="ms-track-order-heading">
      <strong class="ms-username fs-20">{{ $t('track_order') }}</strong>
      <div class="row g-0 mt-3">
        <div v-html="$t('track_order_instruction')" class="col-lg-8 description"></div>
        <div class="col-lg-4"></div>
      </div>
    </div>
    <div class="ms-dashboard-top-content mt-4">
      <div class="row">
        <div class="item col-6">
          <div class="label">{{ $t('order_id') }}</div>
          <div class="value mt-2">
            <InputText type="text" :placeholder="$t('order_id')" autofocus/>
          </div>
        </div>
        <div class="item col-6">
          <div class="label">{{ $t('payment_email') }}</div>
          <div class="value mt-2">
            <InputText type="text" :placeholder="$t('email_address')"/>
          </div>
        </div>
      </div>
      <div class="description mt-3 d-flex gap-2 align-items-center">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
            <path
                d="M12 21C16.9706 21 21 16.9706 21 12C21 7.02944 16.9706 3 12 3C7.02944 3 3 7.02944 3 12C3 16.9706 7.02944 21 12 21Z"
                stroke="#5F6C72" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
            <path d="M11.25 11.25H12V16.5H12.75" stroke="#5F6C72" stroke-width="1.5" stroke-linecap="round"
                  stroke-linejoin="round"/>
            <path
                d="M11.8125 9C12.4338 9 12.9375 8.49632 12.9375 7.875C12.9375 7.25368 12.4338 6.75 11.8125 6.75C11.1912 6.75 10.6875 7.25368 10.6875 7.875C10.6875 8.49632 11.1912 9 11.8125 9Z"
                fill="#5F6C72"/>
          </svg>
        {{ $t('order_id_sent') }}
      </div>
      <div>
        <Button class="ms-btn orange ms-btn_search mt-4 text-center ps-3 pe-3">
          <div class="d-flex align-items-center gap-1">
            <div>{{ $t('lookup') }}</div>
            <div class="icon-w20 icon-arrow-right_white"></div>
          </div>
        </Button>
      </div>
    </div>

  </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';

export default {
  components: {
    InputText,
    Button,
  }
}
</script>

<style lang="scss">
.ms-track-order {
  .description {
    color: var(--Gray-600);
  }
}
</style>
