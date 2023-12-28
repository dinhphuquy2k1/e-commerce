<template>
    <div class="m-wrapper w-100 d-flex h-100vh flex-column">
        <Header />
        <Footer />
    </div>
</template>

<script>
import Header from '@/views/user/components/Header.vue';
import Footer from '@/views/user/components/Footer.vue';
export default {
    components:{
        Header,
        Footer
    }
}
</script>