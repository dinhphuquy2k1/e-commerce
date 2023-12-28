<template>
    <div class="m-header w-100 d-flex justify-content-between">
        <div class="m-logo_container d-flex align-items-center">
            <div class="logo"></div>
            <div class="title"></div>
        </div>
        <div class="m-search_form d-flex flex-grow-1">
            <div class="d-flex ms-search_form-group flex-grow-1">
                <InputText type="text" v-model="value" class="ms-input_search h-100"/>
                <Dropdown v-model="selectedCity" :options="cities" optionLabel="name" placeholder="Select a City" class="rounded-0 h-100 ms-dropdown_search" />
            </div>
            <button class="ms-btn primary ms-btn_search">
                <div class="text">Tìm kiếm</div>
            </button>
        </div>
        <div class="m-header_actions d-flex">
            <div class="d-flex cart pointer flex-column align-items-center ms-4 me-4 item-action">
                <div class="icon"></div>
                <div class="title">Giỏ hàng</div>
            </div>
            <div class="d-flex message pointer flex-column align-items-center me-4 item-action">
                <div class="icon"></div>
                <div class="title">Tin nhắn</div>
            </div>
            <div class="d-flex love pointer flex-column align-items-center me-4 item-action">
                <div class="icon"></div>
                <div class="title">Yêu thích</div>
            </div>
            <div class="d-flex profile pointer flex-column align-items-center item-action">
                <div class="icon"></div>
                <div class="title">Tài khoản</div>
            </div>
        </div>
    </div>
</template>

<script>
import InputText from 'primevue/inputtext';
import Dropdown from 'primevue/dropdown';
export default {
    components:{
        Dropdown,
        InputText
    },
    data () {
        return {
            selectedCity: null,
            cities: [
                { name: 'New York', code: 'NY' },
                { name: 'Rome', code: 'RM' },
                { name: 'London', code: 'LDN' },
                { name: 'Istanbul', code: 'IST' },
                { name: 'Paris', code: 'PRS' }
            ]
        }
    },
}
</script>


<style lang="scss" scoped>
    .m-header{
        height: 86px;
        flex-shrink: 0;
        background: #fff;
        padding: 24px 130px 24px 130px;
        .m-logo_container{
            gap: 6.214px;
            flex-shrink: 0;
            padding: 1px 23.786px 1px 0px;
            height: 46px;
            width: 150px;

            .logo{
                width: 44px;
                height: 44px;
                background-image: url('@public/assets/icons/logo-symbol.svg');
                background-repeat: no-repeat;
                background-color: transparent;
            }
            .title{
                width: 77px;
                height: 21.101px;
                flex-shrink: 0;
                background-image: url('@public/assets/icons/Brand.svg');
                background-repeat: no-repeat;
                background-color: transparent;
            }
        }

        .m-search_form{
            max-width: 665px;
            .ms-btn_search{
                border-radius: 0px;
                border-top-right-radius: 4px;
                border-bottom-right-radius: 4px;
            }
            .ms-search_form-group{
                height: 40px;
                border: 1px solid #e0e0e0;
                border-top-left-radius: 4px;
                border-bottom-left-radius: 4px;
            }
            .ms-search_form-group:focus-within{
                border: 1px solid #0073e6;
            }
        }
        .m-header_actions{
            .icon{
                width: 25px;
                height: 25px;
                flex-shrink: 0;
                background-repeat: no-repeat;
                background-color: transparent;
            }
            .cart{
                .icon{
                    background-image: url('@public/assets/icons/cart.svg');
                }
            }
            .love{
                .icon{
                    background-image: url('@public/assets/icons/love.svg');
                }
            }
            .message{
                .icon{
                    background-image: url('@public/assets/icons/message.svg');
                }
            }
            .profile{
                .icon{
                    background-image: url('@public/assets/icons/profile.svg');
                }
            }
           
        }
    }
</style>