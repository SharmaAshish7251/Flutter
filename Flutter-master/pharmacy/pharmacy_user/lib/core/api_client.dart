import 'package:dio/dio.dart';

// Direct
// class ApiClient{
//   final Dio _dio = Dio (
//     BaseOptions(baseUrl:'https://ashishsharma72.pythonanywhere.com' )
//   );
//
//   Dio get instance =>  _dio;
//
//
// }


// Dio Constructor
class ApiClient{
  final Dio dio;
  ApiClient(this.dio);
}