import request from '../api/utils/request'
import { AxiosResponse } from 'axios';

export function getBrand(): Promise<any> {
    return request({
        url: 'brands',
        method: 'GET',
    }) as Promise<any>
}

export function addBrand(data: Record<string, any>): Promise<AxiosResponse<any>> {
    return request({
        url: 'brands',
        method: 'POST',
        data: data,
    });
}
