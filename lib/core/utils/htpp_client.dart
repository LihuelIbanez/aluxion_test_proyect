// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// typedef UploadProgressCallback = void Function(int count, int total);

// abstract class HttpClient {
//   Future<Response<dynamic>> get(
//     String path, {
//     Map<String, dynamic>? queryParameters,
//     Map<String, dynamic>? headers,
//   });
// }

// class HttpClientImpl implements HttpClient {
//   late BaseOptions _options;

//   HttpClientImpl() {
//     _options = BaseOptions(
//       baseUrl: 'https://api.unsplash.com/',
//       connectTimeout: 1000,
//       receiveTimeout: 999,
//     );
//   }

//   Future<Dio> _getDio() async {
//     var dio = Dio(_options);

//     if (kDebugMode) {
//       dio.interceptors.add(PrettyDioLogger(
//           requestBody: true,
//           requestHeader: true,
//           responseBody: true,
//           responseHeader: false));
//     }
//     return dio;
//   }

//   @override
//   Future<Response<dynamic>> get(String path,
//       {Map<String, dynamic>? queryParameters,
//       Map<String, dynamic>? headers}) async {
//     try {
//       final dio = await _getDio();
//       if (headers != null) {
//         dio.options.headers.addAll(headers);
//       }

//       final response = await dio.get(path, queryParameters: queryParameters);

//       return response;
//     } on DioError catch (_) {}
//   }
// }
