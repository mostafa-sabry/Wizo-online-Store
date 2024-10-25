import 'package:dio/dio.dart';

import '../../helpers/cache_helper.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Content-Type'] = 'application/json';
    options.headers['lang'] = 'ar';
    options.headers['Authorization'] =
        CacheHelper().getData(key: 'token') != null
            ? '${CacheHelper().getData(key: 'token')}'
            : null;
    super.onRequest(options, handler);
  }
}
