<template>
    <div class="ms-footer">
        <div class="ms-footer_item">
            <div class="ms-footer_logo-container d-flex align-items-center">
                <div class="logo"></div>
                <div class="title"></div>
            </div>
            <div class="text-start text-wrap mt-3">Best information about the company gies here but now lorem ipsum is</div>
            <div class="social-container mt-3 d-flex">
                <div class="facebook me-2">
                    <div class="icon"></div>
                </div>
                <div class="twitter me-2">
                    <div class="icon"></div>
                </div>
                <div class="linkedin me-2">
                    <div class="icon"></div>
                </div>
                <div class="instagram me-2">
                    <div class="icon"></div>
                </div>
                <div class="youtube me-2">
                    <div class="icon"></div>
                </div>
            </div>
        </div>
    </div>
</template>

<style lang="scss" scoped>
    .ms-footer{
        height: 256px;
        flex-shrink: 0;
        background: #fff;
        padding: 24px 130px 24px 130px;
        .ms-footer_item{
            .ms-footer_logo-container{
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

            .social-container{
                .icon{
                    width: 32px;
                    height: 32px;
                    flex-shrink: 0;
                    background-repeat: no-repeat;
                    background-color: transparent;
                }
                .facebook{
                    .icon{
                        background-image: url('@public/assets/icons/facebook3.svg'); 
                    }
                }
                .twitter{
                    .icon{
                        background-image: url('@public/assets/icons/twitter3.svg'); 
                    }
                }
                .linkedin{
                    .icon{
                        background-image: url('@public/assets/icons/linkedin3.svg'); 
                    }
                }
                .instagram{
                    .icon{
                        background-image: url('@public/assets/icons/instagram3.svg'); 
                    }
                }
                .youtube{
                    .icon{
                        background-image: url('@public/assets/icons/youtube3.svg'); 
                    }
                }
            }
        }
    }
</style>