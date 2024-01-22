<template>
  <div class="ms-browsing-wrapper">
    <div class="ms-browsing-container">
      <div class="header d-flex justify-content-between">
        <div class="left-side">
          Lịch sử duyệt web
        </div>
        <div class="right-side d-flex justify-content-center align-items-center gap-3">
          Bật / Tắt lịch sử duyệt web
          <InputSwitch v-model="checked"/>
        </div>
      </div>
      <div class="sub-header">
        <div>

        </div>
      </div>
      <div class="main"></div>
    </div>
  </div>
</template>

<script>
import InputSwitch from 'primevue/inputswitch';

export default {
  components: {
    InputSwitch
  },
  data(){
    return{
      checked: true,
    }
  }
}
</script>

<style lang="scss">

</style>
