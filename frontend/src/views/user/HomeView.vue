<template>
    <div class="m-wrapper w-100 d-flex h-100vh flex-column">
        <Header />
        <div>
            <Home />
            <Subscribe/>
            <Footer />
        </div>
    </div>
</template>

<script>
import Header from '@/views/user/components/Header.vue';
import Home from '@/views/user/components/Home.vue';
import Subscribe from '@/views/user/components/Subscribe.vue';
import Footer from '@/views/user/components/Footer.vue';
export default {
    components:{
        Header,
        Home,
        Subscribe,
        Footer
    }
}
</script>