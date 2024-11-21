<template>
  <InputText v-model:value/>
</template>

<script>
import InputText from 'primevue/inputtext';

export default {
  components: {
    InputText,
  },
  data() {
    return {
      value: null,
    }
  }
}
</script>

<style>

</style>
