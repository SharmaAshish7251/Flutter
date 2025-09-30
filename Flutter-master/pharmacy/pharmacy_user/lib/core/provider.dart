import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmacy_user/core/api_client.dart';
import 'package:pharmacy_user/models/login_model.dart';
import 'package:pharmacy_user/repositories/auth_repositories.dart';
import 'package:pharmacy_user/viewmodels/auth_viewmodels.dart';
import 'package:shared_preferences/shared_preferences.dart';

// pass this to repo
final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(baseUrl: 'https://ashishsharma72.pythonanywhere.com'));
});

final apiClientProvider = Provider<ApiClient>((ref) {
  final dio = ref.read(dioProvider);
  return ApiClient(dio);
});

final authRepositoryProvider = Provider((ref) {
  final apiClient = ref.read(apiClientProvider);
  return AuthRepository(apiClient);
});

final authViewModelsProvider =
    StateNotifierProvider<AuthViewModels, AsyncValue<LoginModel>>((ref) {
      final repo = ref.read(authRepositoryProvider);
      return AuthViewModels(repo);
    });

final sharedPrefProvider = FutureProvider<SharedPreferences>((ref) async {
  return await SharedPreferences.getInstance();
});
