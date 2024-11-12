// import 'package:dio/dio.dart';
// import 'package:go_router/go_router.dart';
// import 'package:swimlink/core/_export_utils.dart';
// import 'package:swimlink/core/api/endpoints.dart';
// import 'package:swimlink/core/api/error_parser.dart';
// import 'package:swimlink/core/routes/app_routes.dart';
// import 'package:swimlink/core/utils/extensions/extension_fun.dart';
// import 'package:swimlink/service_locator.dart';

// final class RequestAuthentication extends InterceptorsWrapper {
//   @override
//   void onError(DioException err, ErrorInterceptorHandler handler) {
//     "REQUEST_GOT_HERE".debugString;
//     if (err.response!.statusCode == 401) {
//       navigatorKey.currentContext!.go(AppRoute.signInScreen.navTo);
//       return handler.resolve(Response(
//         requestOptions: err.response?.requestOptions ??
//             RequestOptions(path: err.response?.requestOptions.path ?? ''),
//         data: ErrorParser.fromJson({
//           "status": "401",
//           "message": "User is unauthorized",
//           "data": {"status": 401, 'error': "User is unauthorized"},
//         }),
//         statusCode: 401,
//       ));
//     }
//     return handler.next(err);
//   }

//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     final String token = getit<HiveAuthService>().getAccessToken();
//     // "RUNNING HEADER INTERCEPTOR".debugString;
//     options.headers["Accept"] = "application/json";

//     if (options.path.contains(Endpoints.login) ||
//         options.path.contains(Endpoints.refreshToken)) {
//       // Excempt the [Endpoints.resetPassword] endpoint from using the default access token
//       return handler.next(options);
//     }

//     options.headers["Authorization"] = "Bearer $token";
//     return handler.next(options);
//   }
// }
