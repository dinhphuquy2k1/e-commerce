import request from '../api/utils/request'

export function uploadImage(data) {
    return request({
        url: 'upload/image',
        method: 'POST',
        headers: {
            'Content-Type': 'multipart/form-data' // Đảm bảo server biết là dữ liệu là multipart/form-data
        },
        data: data
    })
}
