import {createStore} from 'vuex'
import paging from "@/store/modules/paging";
import category from "@/store/modules/category";
import product from "@/store/modules/product";
import order from "@/store/modules/order";

export default createStore({
    modules: {
        paging,
        category,
        product,
        order,
    }
})
