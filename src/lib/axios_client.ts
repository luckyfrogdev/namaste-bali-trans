// axiosClient.ts
import axios, { type AxiosInstance, type InternalAxiosRequestConfig } from 'axios';

const BASE_URL = "http://103.172.205.223:8282"; // Your API base URL

const axiosInstance: AxiosInstance = axios.create({
	baseURL: BASE_URL,
	headers: {
		// You can add other headers here if needed
	}
});

// Function to retrieve the access token from localStorage
const getAccessToken = (): string | null => {
	return localStorage.getItem('access_token');
};

// Function to set Authorization header with bearer token
const setAuthHeader = (config: InternalAxiosRequestConfig): InternalAxiosRequestConfig => {
	const token: string | null = getAccessToken();
	if (token) {
		config.headers = { ...config.headers, Authorization: `Bearer ${token}` };
	}
	return config;
};

// Request interceptor to set Authorization header for all requests except login
axiosInstance.interceptors.request.use(
	(config: InternalAxiosRequestConfig): InternalAxiosRequestConfig<any> => {
		// Check if the request is for login
		if (config.url?.endsWith('/login')) {
			// Skip adding Authorization header for login request
			return config;
		}
		// Add Authorization header for other requests
		return setAuthHeader(config);
	},
	(error) => {
		// Handle error with the request
		return Promise.reject(error);
	}
);

// Response interceptor to handle unauthorized responses (HTTP 401 or 403)
axiosInstance.interceptors.response.use(
	(response) => response,
	(error) => {

		return Promise.reject(error);
	}
);


export default axiosInstance;
