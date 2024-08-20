import request from '../api/utils/request';

export function getOrder(filter: { page?: number } = {page: 1}): Promise<any> {
    return request({
        url: `orders?page=${filter.page}`,
        method: 'post',
        data: filter,
    });
}
