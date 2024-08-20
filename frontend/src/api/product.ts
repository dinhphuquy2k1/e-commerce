import request from '../api/utils/request';

interface ProductData {
    // Định nghĩa cấu trúc dữ liệu của sản phẩm ở đây
    // Ví dụ: id: number, name: string, price: number, ...
}

export function getProduct(filter: { page?: number } = {page: 1}): Promise<any> {
    return request({
        url: `products?page=${filter.page}`,
        method: 'post',
        data: filter,
    });
}

export function addProduct(data: ProductData): Promise<any> {
    return request({
        url: 'products/create',
        method: 'POST',
        headers: {
            'Content-Type': 'multipart/form-data' // Đảm bảo server biết là dữ liệu là multipart/form-data
        },
        data: data
    });
}
