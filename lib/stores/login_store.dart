// ignore_for_file: unnecessary_null_comparison

import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/helpers/extensions.dart';
import 'package:xlo_mobx/repositories/user_repository.dart';
import 'package:xlo_mobx/stores/user_manager_store.dart';
part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @observable
  String email = '';

  @observable
  bool emailTouched = false;

  @action
  void setEmail(String value) => email = value;

  @action
  void setEmailTouched(bool value) => emailTouched = value;

  @computed
  bool get emailValid => email != null && email.isEmailValid();
  String? get emailError {
    if (!emailTouched) {
      return null;
    } else if (!emailValid) {
      return 'E-mail inválido';
    } else {
      return null;
    }
  }

  @observable
  String password = '';

  @observable
  bool passwordTouched = false;

  @action
  void setPassword(String value) => password = value;

  @action
  void setPasswordTouched(bool value) => passwordTouched = value;

  @computed
  bool get passwordValid => password != null && password.length >= 4;
  String? get passwordError {
    if (!passwordTouched) {
      return null;
    } else if (!passwordValid) {
      return 'Senha inválida';
    } else {
      return null;
    }
  }

  @observable
  bool loading = false;

  @observable
  String? error;

  @computed
  void Function() get loginPressed =>
      emailValid && passwordValid && !loading ? _login : _doNothing;

  @action
  Future<void> _login() async {
    loading = true;
    try {
      final user = await UserRepository().loginWithEmail(email, password);
      GetIt.I<UserManagerStore>().setUser(user);
    } catch (e) {
      error = e.toString();
    }

    loading = false;
  }

  @action
  void _doNothing() {}
}
