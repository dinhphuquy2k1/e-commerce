import request from '../api/utils/request';
import {AxiosResponse} from 'axios';

export function getBanner(isUse: any): Promise<any> {
    return request({
        url: `banners?isUse=${isUse}`,
        method: 'GET',
    }) as Promise<any>;
}

/**
 * update config
 * @param data
 */
export function addBanner(data: {}): Promise<AxiosResponse<any>> {
    return request({
        url: 'shopping/banner',
        method: 'POST',
        data: data,
    });
}

/**
 * update config
 * @param data
 */
export function updateBanner(data: {}): Promise<AxiosResponse<any>> {
    return request({
        url: 'shopping/banner',
        method: 'PUT',
        data: data,
    });
}

/**
 * update config
 * @param id
 */
export function deleteBanner(id: Number): Promise<AxiosResponse<any>> {
    return request({
        url: `shopping/banner/${id}`,
        method: 'DELETE',
    });
}
