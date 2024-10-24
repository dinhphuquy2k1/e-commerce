import {createStore} from 'vuex'
import paging from "@/store/modules/paging";
import category from "@/store/modules/category";
import product from "@/store/modules/product";
import order from "@/store/modules/order";
import brand from "@/store/modules/brand";
import shopping_mall from "@/store/modules/shopping_mall";
import toast from "@/store/modules/toast";

export default createStore({
    modules: {
        paging,
        category,
        product,
        order,
        brand,
        shopping_mall,
        toast
    }
})
