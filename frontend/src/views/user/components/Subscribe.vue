<template>
    <div class="ms-subscribe d-flex justify-content-center flex-column align-items-center">
        <div class="group-title">
            <div class="title">Theo dõi bản tin của chúng tôi</div>
            <div class="description">Nhận tin tức hàng ngày về các ưu đãi sắp tới từ nhiều nhà cung cấp trên toàn thế giới</div>
        </div>
        <div class="d-flex align-items-center group-box-input">
            <InputText placeholder="Địa chỉ email"/>
            <div>
                <Button class="ms-btn orange ms-btn_search text-center ps-3 pe-3">
                    <div class="d-flex align-items-center gap-1">
                        <div>Đăng kí</div>
                        <div class="icon-w20 icon-arrow-right_white"></div>
                    </div>
                </Button>
            </div>
        </div>
        <div class="d-flex group-logo">
            <Image :src="require('@public/assets/icons/google-2015 1.svg')" alt="Image"/>
            <Image :src="require('@public/assets/icons/Frame.svg')" alt="Image"/>
            <Image :src="require('@public/assets/icons/philips 1.svg')" alt="Image"/>
            <Image :src="require('@public/assets/icons/toshiba-1 1.svg')" alt="Image"/>
            <Image :src="require('@public/assets/icons/samsung-4 1.svg')" alt="Image"/>
        </div>
    </div>
</template>

<script>
import Image from 'primevue/image';
import InputText from 'primevue/inputtext';
import Button from 'primevue/button';
export default {
    components:{
        InputText,
        Button,
        Image
    }
}
</script>


<style lang="scss" scoped>
.ms-subscribe{
    padding: 72px 0;
    background: #1B6392;
    .group-title{
        .title{
            font-size: 32px;
            font-style: normal;
            font-weight: 600;
            color: #FFF;
            margin-bottom: 12px;
        }
        .description{
            color: #FFF;
            max-width: 536px;
            font-size: 16px;
            font-style: normal;
            font-weight: 400;
            opacity: 0.7;
        }
    }
    .group-box-input{
        margin-top: 32px;
        margin-bottom: 32px;
        display: flex;
        padding: 12px;
        align-items: center;
        gap: 16px;
        border-radius: 3px;
        background: #FFF;
        box-shadow: 0px 12px 24px 0px rgba(0, 0, 0, 0.12);
        .p-inputtext{
            width: 424px;
            border: none;
        }
    }
    .group-logo{
        align-items: center;
        gap: 48px;
        opacity: 0.4;
    }
}
</style>