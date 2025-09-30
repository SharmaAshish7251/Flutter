import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmacy_user/models/login_model.dart';
import 'package:pharmacy_user/repositories/auth_repositories.dart';

class AuthViewModels extends StateNotifier<AsyncValue<LoginModel>> {
  final AuthRepository _repo;

  // AuthViewModels(this._repo) : super(AsyncValue.loading());
  AuthViewModels(this._repo) : super(AsyncValue.data(LoginModel(status: 0, message: '')));

  Future<void> signup(String name,
      String email,
      String password,
      String phoneNumber,
      String address,
      String pinCode,) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
          () =>
          _repo.signup(name, password, email, phoneNumber, address, pinCode),
    );
  }


  // Login
  //
  // Future<void> login(String email,
  //     String password,) async {
  //   state = const AsyncValue.loading();
  //   state = await AsyncValue.guard(
  //         () => _repo.login(email, password),
  //
  //   );
  // }

Future<void> login (
    String email,
    String password,
    ) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(()=> _repo.login(email, password));
}


}
