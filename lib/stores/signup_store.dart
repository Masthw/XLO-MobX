// ignore_for_file: unnecessary_null_comparison

import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/helpers/extensions.dart';
import 'package:xlo_mobx/models/user.dart';
import 'package:xlo_mobx/repositories/user_repository.dart';
part 'signup_store.g.dart';

class SignupStore = _SignupStore with _$SignupStore;

abstract class _SignupStore with Store {
  @observable
  String name = '';

  @observable
  bool nameTouched = false;

  @action
  void setName(String value) => name = value;

  @action
  void setNameTouched(bool value) => nameTouched = value;

  @computed
  bool get nameValid => name != null && name.length > 6;
  String? get nameError {
    if (!nameTouched) {
      return null;
    } else if (name.isEmpty) {
      return 'Campo obrigatório';
    } else if (name.length < 6) {
      return 'Nome muito curto';
    } else {
      return null;
    }
  }

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
    } else if (email.isEmpty) {
      return 'Campo obrigatório';
    } else if (!emailValid) {
      return 'E-mail inválido';
    } else {
      return null;
    }
  }

  @observable
  String phone = '';

  @observable
  bool phoneTouched = false;

  @action
  void setPhone(String value) => phone = value;

  @action
  void setPhoneTouched(bool value) => phoneTouched = value;

  @computed
  bool get phoneValid => phone != null && phone.length >= 14;
  String? get phoneError {
    if (!phoneTouched) {
      return null;
    } else if (phone.isEmpty) {
      return 'Campo obrigatório';
    } else if (!phoneValid) {
      return 'Celular inválido';
    } else {
      return null;
    }
  }

  @observable
  String pass1 = '';

  @observable
  bool pass1Touched = false;

  @action
  void setPass1(String value) => pass1 = value;

  @action
  void setPass1Touched(bool value) => pass1Touched = value;

  @computed
  bool get pass1Valid => pass1 != null && pass1.length >= 6;
  String? get pass1Error {
    if (!pass1Touched) {
      return null;
    } else if (pass1.isEmpty) {
      return 'Campo obrigatório';
    } else if (!pass1Valid) {
      return 'Senha muito curta';
    } else {
      return null;
    }
  }

  @observable
  String pass2 = '';

  @observable
  bool pass2Touched = false;

  @action
  void setPass2(String value) => pass2 = value;

  @action
  void setPass2Touched(bool value) => pass2Touched = value;

  @computed
  bool get pass2Valid => pass1 != null && pass2 == pass1;
  String? get pass2Error {
    if (!pass2Touched) {
      return null;
    } else if (!pass2Valid || pass2.isEmpty) {
      return 'Senhas não coincidem';
    } else {
      return null;
    }
  }

  @computed
  bool get isFormValid =>
      nameValid && emailValid && phoneValid && pass1Valid && pass2Valid;

  @computed
  void Function() get signUpPressed =>
      (isFormValid && !loading) ? _signUp : _doNothing;

  @observable
  bool loading = false;

  @observable
  String? error;

  @action
  void _doNothing() {}

  @action
  Future<void> _signUp() async {
    loading = true;

    final user = User(name: name, email: email, phone: phone, password: pass1);

    try {
      final resultUser = await UserRepository().signUp(user);
      print(resultUser);
    } catch (e) {
      error = e.toString();
    }

    loading = false;
  }
}
