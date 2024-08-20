import axios, { AxiosInstance, AxiosResponse } from 'axios';

const service: AxiosInstance = axios.create({
    baseURL: "http://localhost:30001/api", // uri = baseURL + apiFunction truyền tới
    timeout: 5000,
    headers: { // Request Headers
        'Content-Type': 'application/json',
        'Accept': 'application/json'
    }
});

service.interceptors.request.use(
    (config) => {
        // if (Auth.check()) {
        //     // config.headers['Authorization'] = 'Bearer ' + Auth.getToken()
        // }
        return config;
    },
    (error: any) => {
        console.log('error', error);
        return Promise.reject(error);
    }
);

service.interceptors.response.use(
    (response: AxiosResponse) => {
        return response.data;
    },
    (error: any) => {
        console.log(error);
        if (error.response) {
            // Xử lý lỗi từ phản hồi
        }
        return Promise.reject(error);
    }
);

export default service;
