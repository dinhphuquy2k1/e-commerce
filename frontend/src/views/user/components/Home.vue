<template>
    <div class="ms-home d-flex flex-column">
        <div>
            <Banner></Banner>
        </div>
    </div>
</template>

<script>
import Banner from '@/views/user/components/Banner.vue';
export default {
    components:{
        Banner
    }
}
</script>

<style lang="scss" scoped>
.ms-home{
    padding: 24px 130px 24px 130px;
}
</style>