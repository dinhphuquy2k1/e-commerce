<template>
  <div class="ms-browsing-wrapper">
    <div class="ms-browsing-container">
      <div class="header d-flex justify-content-between">
        <div class="left-side fs-20 fw-bold">
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
      <div class="filter-box">
        <div></div>
        <div></div>
      </div>
      <div class="main mt-3">
        <div v-for="item in 3" class="d-flex gap-3 mb-3">
          <BrowsingHistoryItem :header="'17 tháng 9 năm 2024'" :with-pagination="false"/>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import InputSwitch from 'primevue/inputswitch';
import BrowsingHistoryItem from "@/views/user/components/dashboard/BrowsingHistoryItem.vue";
export default {
  components: {
    InputSwitch,
    BrowsingHistoryItem,
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
