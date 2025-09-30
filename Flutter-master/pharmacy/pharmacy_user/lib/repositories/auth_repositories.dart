import 'package:pharmacy_user/models/login_model.dart';
import 'package:dio/dio.dart';
import 'package:pharmacy_user/core/api_client.dart';

class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository(this._apiClient);

  Future<LoginModel> signup(
      String name,
      String password,
      String email,
      String phoneNumber,
      String address,
      String pinCode,
      ) async {
    try {
      final form = FormData.fromMap({
        'name': name,
        'password': password,
        'email': email,
        'phone_number': phoneNumber,
        'address': address,
        'pin_code': pinCode,
      });

      final res = await _apiClient.dio.post('/createUser', data: form);
      return LoginModel.fromJson(res.data);
    } catch (e) {
      throw Exception('Signup failed: ${e.toString()}');
    }
  }

  // Future<LoginModel> login(String email, String password) async {
  //   try {
  //     final data = FormData.fromMap({'email': email, 'password': password});
  //     final res = await _apiClient.dio.post('/login', data: data);
  //     return LoginModel.fromJson(res.data);
  //   } catch (e) {
  //     throw Exception('Login failed: ${e.toString()}');
  //   }
  // }

  Future<LoginModel> login (
      String email,
      String password,
      ) async {
    final form = FormData.fromMap({
      'email': email,
      'password': password,
    });

    final res = await _apiClient.dio.post('/login', data : form);
    return LoginModel.fromJson(res.data);

  }



}
