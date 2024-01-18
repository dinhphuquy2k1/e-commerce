<template>
    <div class="ms-banner d-flex row">
        <div class="ms-carousel col-lg-7 col-12 col-sm-7">
            <Carousel :value="products" :numVisible="1" :numScroll="1" circular :autoplayInterval="5000" class="h-100">
                <template #item="slotProps">
                    <div class="d-flex h-100 p-4 position-relative">
                        <div class="flex-grow-1 d-flex flex-column flex-grow-1 justify-content-center">
                            <div class="title text-start d-flex align-items-center"><div class="divider me-2"></div><span class="content">THE BEST PLACE TO PLAY</span></div>
                            <div class="text-start fs-32 fw-semibold">Xbox Consoles</div>
                            <div class="text-start text-wrap mt-3">Save up to 50% on select Xbox games. Get 3 months of PC Game Pass for $2 USD.</div>
                            <Button label="Mua ngay" class="ms-btn primary ms-btn_search mt-4"/>
                            <div class="banner-price">20.000.000đ</div>
                        </div>
                        <div class=" flex-grow-1 justify-content-center d-flex">
                            <img :src="require('@public/assets/banner/'+ slotProps.data.image)" :alt="slotProps.data.name" class="w-6 shadow-2" />
                        </div>
                    </div>
                </template>
            </Carousel>
        </div>
        <div class="ms-sub_carousel col-lg-5 col-sm-5 col-12 d-flex flex-grow-1">
            <div class="d-flex row flex-grow-1 flex-column px-3 gy-3">
                <div class="col ms-sub_banner-item">
                    <div class="title text-start text-wrap">SUMMER SALES</div>
                    <div class="text-start mt-2 text-wrap">New Google Pixcel 6 Pro</div>
                    <div class="d-flex flex-start mt-2"><Button label="Mua ngay" class="ms-btn ps-3 pe-3 primary ms-btn_search"/></div>
                </div>
                <div class="col ms-sub_banner-item">
                    <div class="title text-start text-wrap">SUMMER SALES</div>
                    <div class="text-start mt-2 text-wrap">New Google Pixcel 6 Pro</div>
                    <div class="d-flex flex-start mt-2"><Button label="Mua ngay" class="ms-btn ps-3 pe-3 primary ms-btn_search"/></div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import Carousel from 'primevue/carousel';
import Button from 'primevue/button';
export default {
    components:{
        Carousel,
        Button
    },
    data() {
        return {
            products: [
               
            ],

        };
    },
    mounted() {
        this.products = [
             {
                    id: '1000',
                    code: 'f230fh0g3',
                    name: 'Bamboo Watch',
                    description: 'Product Description',
                    image: 'Image.png',
                    price: 65,
                    category: 'Accessories',
                    quantity: 24,
                    inventoryStatus: 'INSTOCK',
                    rating: 5
                },
                {
                    id: '1001',
                    code: 'nvklal433',
                    name: 'Black Watch',
                    description: 'Product Description',
                    image: 'image 5.png',
                    price: 72,
                    category: 'Accessories',
                    quantity: 61,
                    inventoryStatus: 'INSTOCK',
                    rating: 4
                },
                {
                    id: '1002',
                    code: 'zz21cz3c1',
                    name: 'Blue Band',
                    description: 'Product Description',
                    image: 'Image.png',
                    price: 79,
                    category: 'Fitness',
                    quantity: 2,
                    inventoryStatus: 'LOWSTOCK',
                    rating: 3
                },
                {
                    id: '1003',
                    code: '244wgerg2',
                    name: 'Blue T-Shirt',
                    description: 'Product Description',
                    image: 'image 5.png',
                    price: 29,
                    category: 'Clothing',
                    quantity: 25,
                    inventoryStatus: 'INSTOCK',
                    rating: 5
                },
        ]
    },

    methods: {
        getSeverity(status) {
            switch (status) {
                case 'INSTOCK':
                    return 'success';

                case 'LOWSTOCK':
                    return 'warning';

                case 'OUTOFSTOCK':
                    return 'danger';

                default:
                    return null;
            }
        }
    }
}
</script>

<style lang="scss" scoped>
.ms-banner{
  padding: 24px $padding-base 24px $padding-base;
    max-height: 520px;
    height: 520px;
    .ms-carousel{
        border-radius: 6px;
        background: #FFF;
        .title{
            .divider{
                width: 24px;
                height: 2px;
                background: #2DA5F3;
            }
            .content{
                color: #2484C2;
                text-transform: uppercase;
            }
        }
        .banner-price{
            padding: 8px 16px;
            border-radius: 4px;
            color: #141414;
            background: #EFD33D;
            position: absolute;
            right: 44px;
            top: 54px;
        }
    }

    .ms-sub_carousel{
        .ms-sub_banner-item{
            border-radius: 6px;
            padding: 46px;
            flex: 1;
        }
        .ms-sub_banner-item:first-child{
            color: #fff;
            background: #191C1F;
        }
        .ms-sub_banner-item:last-child{
            color: #000;
            background: #FFF;
        }
    }
}
</style>

<style lang="scss">
.ms-banner{
    .p-carousel-indicators{
        padding-left: 3.5rem;
        justify-content: flex-start;
    }
    .p-carousel .p-carousel-indicators .p-carousel-indicator button{
        background-color: unset !important;
        width: 10px;
        height: 10px;
        margin-right: 8px;
        position: relative;
    }
    .p-carousel .p-carousel-indicators .p-carousel-indicator button:before {
        content: "";
        position: absolute;
        height: 10px;
        width: 10px;
        top: 0px;
        display: inline-block;
        background: transparent url('@public/assets/icons/dot_inactive.svg') no-repeat;
    }
    .p-carousel .p-carousel-indicators .p-carousel-indicator.p-highlight button:before{
        background: transparent url('@public/assets/icons/dot_active.svg') no-repeat;
    }
}
</style>