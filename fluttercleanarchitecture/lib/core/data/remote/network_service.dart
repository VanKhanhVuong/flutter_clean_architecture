import 'package:dio/dio.dart';
// import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service_const.dart';
import 'package:fluttercleanarchitecture/core/data/remote/network_service_interceptor.dart';

final networkServiceProvider = Provider<Dio>((ref) {
  final options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: oneMinuteTimeout,
    receiveTimeout: oneMinuteTimeout,
    sendTimeout: oneMinuteTimeout,
  );

  final dio = Dio(options);
  final networkServiceInterceptor = ref.watch(
    networkServiceInterceptorProvider(dio),
  );
  dio.interceptors.addAll([
    LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
      error: true,
      requestHeader: true,
      responseHeader: true,
    ),
    networkServiceInterceptor,
  ]);
  return dio;
});
