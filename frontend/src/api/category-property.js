import request from '../api/utils/request'

export function getCategoryProperty(id) {
    return request({
        url: `/categories/properties/${id}`,
        method: 'post',
    })
}
