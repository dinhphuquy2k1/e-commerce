<template>
  <div class="ms-shop-gird_desktop">
    <Panel :header="$t('category')" toggleable class="ms-category">
      <div v-for="category in getCategory" :key="category.key" class="d-flex gap-2 align-items-center pointer">
        <RadioButton v-model="filters.category" :inputId="`category-${category.key}`" name="dynamic"
                     @change="$emit('applyFilter', filters)"
                     :value="category.key"/>
        <label :for="`category-${category.key}`" class=" truncate-text-1 pointer" :title="category.label">{{
            category.label
          }}</label>
      </div>
    </Panel>

    <Panel :header="$t('price_money')" toggleable class="ms-price">
      <div class="w-100">
        <Slider v-model="filters.rangePrice" range class="w-100" :max="maxRangePrice" @slideend="$emit('applyFilter', filters, true)"/>
        <div class="row mt-2 gy-3">
          <div class="col-xxl-6 d-flex gap-2 flex-column">
            <div class="label text-start">{{ $t('min_price') }}</div>
            <InputNumber :placeholder="$t('min_price')" v-model="filters.rangePrice[0]" v-if="filters.rangePrice[0] < filters.rangePrice[1]"
                         mode="currency" inputClass="text-start" :min="0" :max="maxRangePrice"
                         currency="VND" locale="vi" @input="$emit('applyFilter', filters, true)"/>
            <InputNumber :placeholder="$t('min_price')" v-model="filters.rangePrice[1]"
                         mode="currency" inputClass="text-start" :min="0" :max="maxRangePrice"
                         currency="VND" locale="vi" @input="$emit('applyFilter', filters, true)" v-else/>
          </div>
          <div class="col-xxl-6 d-flex gap-2 flex-column">
            <div class="label text-start">{{ $t('max_price') }}</div>
            <InputNumber :placeholder="$t('max_price')" v-model="filters.rangePrice[1]" v-if="filters.rangePrice[1] > filters.rangePrice[0]" mode="currency"
                         currency="VND" locale="vi" inputClass="text-start" :min="0" :max="maxRangePrice" @input="$emit('applyFilter', filters, true)"/>
            <InputNumber :placeholder="$t('max_price')" v-model="filters.rangePrice[0]" mode="currency"
                         currency="VND" locale="vi" inputClass="text-start" :min="0" :max="maxRangePrice" @input="$emit('applyFilter', filters, true)" v-else/>
          </div>
        </div>
        <div class="ms-error-text" v-if="invalidFilters['rangePrice']">{{ invalidFilters['rangePrice'] }}</div>
        <div class="d-flex flex-column mt-3" style="gap: 12px;">
          <div v-for="priceOption in sliderPriceOptions" :key="priceOption.key" class="d-flex gap-2 align-items-center">
            <RadioButton v-model="filters.rangePrice" :inputId="priceOption.key" name="dynamic"
                         :value="priceOption.value" @change="$emit('applyFilter', filters)"/>
            <label :for="priceOption.key" class="ml-2 pointer">{{ $t(priceOption.name) }}</label>
          </div>
        </div>
      </div>
    </Panel>

    <Panel :header="$t('brand')" toggleable class="ms-brand">
      <div class="row gy-2">
        <div v-for="brand of getBrand" :key="brand.id" class="d-flex gap-2 align-items-center col-xxl-12">
          <Checkbox v-model="filters.brands" :inputId="`brand-${brand.id}`" :name="`brand-${brand.id}`"
                    :value="`brand-${brand.id}`" @change="$emit('applyFilter', filters, true)"/>
          <label :for="`brand-${brand.id}`" class="truncate-text-1 pointer">{{ brand.brand_name }}</label>
        </div>
      </div>
    </Panel>

    <Panel header="Đánh giá" toggleable class="ms-rating">
      <div class="row gy-2">
        <div v-for="(item, index) in ratings" :key="item"
             class="d-flex gap-2 align-items-center col-xxl-12 pointer">
          <Checkbox v-model="filters.brand" :inputId="`rating-${item}`" name="category" :value="item"
                    @change="$emit('applyFilter', filters, true)"/>
          <Rating v-model="ratings[index]" readonly :cancel="false" :for="`rating-${item}`" class="pointer"/>
        </div>
      </div>
    </Panel>
  </div>
</template>

<script>
import Panel from 'primevue/panel';
import RadioButton from 'primevue/radiobutton';
import InputText from 'primevue/inputtext';
import Checkbox from 'primevue/checkbox';
import {mapActions, mapGetters} from "vuex";
import Slider from 'primevue/slider';
import Rating from 'primevue/rating';
import InputNumber from 'primevue/inputnumber';

export default {
  props: {
    filtersParent: {}
  },
  emits: ['applyFilter'],
  components: {
    Panel,
    RadioButton,
    InputText,
    Checkbox,
    Slider,
    Rating,
    InputNumber,
  },
  computed: {
    ...mapGetters(['getCategory', 'getBrand']),
  },
  data() {
    return {
      filters: {
        category: null,
        brands: [],
        rangePrice: [20000000, 60000000],
        search: null,
      },
      maxRangePrice: 999999999,
      invalidFilters: [],
      sliderPriceOptions: [
        {name: 'under_1_million', key: 'A', value: [0, 1000000]},
        {name: 'from_2_to_3_million', key: 'B', value: [2000000, 3000000]},
        {name: 'from_3_to_4_million', key: 'C', value: [3000000, 4000000]},
        {name: 'from_6_to_8_million', key: 'D', value: [6000000, 8000000]},
        {name: 'from_15_to_20_million', key: 'O', value: [15000000, 20000000]},
        {name: 'from_20_to_100_million', key: 'Q', value: [20000000, 100000000]},
        {name: 'over_100_million', key: 'R', value: [100000000, 999999999]},
      ],
      ratings: [
        5,
        4,
        3,
        2,
      ],
    }
  },
  methods: {
    ...mapActions(['loadCategory', 'loadBrand']),
  },
  async created() {
    if (Object.keys(this.filtersParent).length !== 0) {
      this.filters = {...this.filtersParent}
    }
    await this.loadBrand();
    // if (!this.filters.category && this.getCategory.length > 0) {
    //   this.filters.category = this.getCategory[0].key
    // }
  },
}
</script>

<style>

</style>
