<template>
    <div class="ms-home d-flex flex-column">
        <div>
            <Banner></Banner>
        </div>
        <div class="corevalue d-flex flex-row flex-wrap align-items-center">
            <div class="item d-flex">
                <div class="icon package">
                </div>
                <div class="title d-flex flex-column align-items-start justify-content-between">
                    <span class="content">Giao hàng nhanh chóng</span>
                    <span class="description">Giao hàng trong 24/H</span>
                </div>
            </div>
            <div class="line"></div>
            <div class="item d-flex">
                <div class="icon trophy">
                </div>
                <div class="title d-flex flex-column align-items-start justify-content-between">
                    <span class="content">Hoàn trả trong 24h</span>
                    <span class="description">Đảm bảo hoàn tiền 100%</span>
                </div>
            </div>
            <div class="line"></div>
            <div class="item d-flex">
                <div class="icon credit-card">
                </div>
                <div class="title d-flex flex-column align-items-start justify-content-between">
                    <span class="content">Thanh toán an toàn</span>
                    <span class="description">Tiền của bạn được an toàn</span>
                </div>
            </div>
            <div class="line"></div>
            <div class="item d-flex">
                <div class="icon headphone">
                </div>
                <div class="title d-flex flex-column align-items-start justify-content-between">
                    <span class="content">Hỗ trợ 24/7</span>
                    <span class="description">Liên hệ / nhắn tin trực tuyến</span>
                </div>
            </div>
        </div>
        <div>
            <TopOffer></TopOffer>
        </div>
    </div>
</template>

<script>
import Banner from '@/views/user/components/Banner.vue';
import TopOffer from '@/views/user/components/TopOffer.vue';
export default {
    components:{
        Banner,
        TopOffer
    }
}
</script>

<style lang="scss" scoped>
$padding-header-left-right: 150px;
.ms-home{
    padding: 24px $padding-header-left-right 24px $padding-header-left-right;
    .corevalue{
        border-radius: 6px;
        border: 1px solid #E4E7E9;
        background: #FFF;
        margin-top: 24px;
        padding: 16px;
        gap: 14px;
        .item{
            gap: 16px;
            padding: 16px;
            flex: 1;
            .icon{
                width: 40px;
                height: 40px;
                background-repeat: no-repeat;
                background-color: transparent;
            }
            .package{
                background-image: url('@public/assets/icons/Package.svg');
            }
            .trophy{
                background-image: url('@public/assets/icons/Trophy.svg');
            }
            .credit-card{
                background-image: url('@public/assets/icons/CreditCard.svg');
            }
            .headphone{
                background-image: url('@public/assets/icons/Headphones_40.svg');
            }
            .title{
                .content{
                    font-style: normal;
                    font-weight: 500;
                }
                .description{
                    font-style: normal;
                    font-weight: 400;
                    color: #5F6C72;
                }
            }
        }
        .line{
            width: 1px;
            height: 56px;
            background: #E4E7E9;
        }
    }
}
</style>