import request from '../api/utils/request'

export function getBrand() {
    return request({
        url: 'brands',
        method: 'GET',
    })
}

export function addBrand(data) {
    return request({
        url: 'brands',
        method: 'POST',
        data: data,
    })
}
