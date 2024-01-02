<template>
    <div class="ms-subscribe d-flex justify-content-center flex-column pt-5 w-100">
        <div class="container">
            <div class="fs-20 fw-semibold">
                Đăng kí nhận bản tin của chúng tôi
            </div>
            <div>Nhận tin tức hàng ngày về các ưu đãi sắp tới từ nhiều nhà cung cấp trên toàn thế giới</div>
            <div class="d-flex container mt-3 pb-5">
                <InputText class="me-3" placeholder="Email"/>
                <Button label="Đăng kí" class="ms-btn primary ms-btn_search"/>
            </div>
        </div>
    </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
export default {
    components:{
        InputText,
        Button
    }
}
</script>


<style lang="scss" scoped>
.ms-subscribe{
    background: #EFF2F4;
}
</style>