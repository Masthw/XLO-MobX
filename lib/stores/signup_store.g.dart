// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignupStore on _SignupStore, Store {
  Computed<bool>? _$nameValidComputed;

  @override
  bool get nameValid => (_$nameValidComputed ??=
          Computed<bool>(() => super.nameValid, name: '_SignupStore.nameValid'))
      .value;
  Computed<bool>? _$emailValidComputed;

  @override
  bool get emailValid =>
      (_$emailValidComputed ??= Computed<bool>(() => super.emailValid,
              name: '_SignupStore.emailValid'))
          .value;
  Computed<bool>? _$phoneValidComputed;

  @override
  bool get phoneValid =>
      (_$phoneValidComputed ??= Computed<bool>(() => super.phoneValid,
              name: '_SignupStore.phoneValid'))
          .value;
  Computed<bool>? _$pass1ValidComputed;

  @override
  bool get pass1Valid =>
      (_$pass1ValidComputed ??= Computed<bool>(() => super.pass1Valid,
              name: '_SignupStore.pass1Valid'))
          .value;
  Computed<bool>? _$pass2ValidComputed;

  @override
  bool get pass2Valid =>
      (_$pass2ValidComputed ??= Computed<bool>(() => super.pass2Valid,
              name: '_SignupStore.pass2Valid'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SignupStore.isFormValid'))
          .value;
  Computed<void Function()>? _$signUpPressedComputed;

  @override
  void Function() get signUpPressed => (_$signUpPressedComputed ??=
          Computed<void Function()>(() => super.signUpPressed,
              name: '_SignupStore.signUpPressed'))
      .value;

  late final _$nameAtom = Atom(name: '_SignupStore.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$nameTouchedAtom =
      Atom(name: '_SignupStore.nameTouched', context: context);

  @override
  bool get nameTouched {
    _$nameTouchedAtom.reportRead();
    return super.nameTouched;
  }

  @override
  set nameTouched(bool value) {
    _$nameTouchedAtom.reportWrite(value, super.nameTouched, () {
      super.nameTouched = value;
    });
  }

  late final _$emailAtom = Atom(name: '_SignupStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$emailTouchedAtom =
      Atom(name: '_SignupStore.emailTouched', context: context);

  @override
  bool get emailTouched {
    _$emailTouchedAtom.reportRead();
    return super.emailTouched;
  }

  @override
  set emailTouched(bool value) {
    _$emailTouchedAtom.reportWrite(value, super.emailTouched, () {
      super.emailTouched = value;
    });
  }

  late final _$phoneAtom = Atom(name: '_SignupStore.phone', context: context);

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  late final _$phoneTouchedAtom =
      Atom(name: '_SignupStore.phoneTouched', context: context);

  @override
  bool get phoneTouched {
    _$phoneTouchedAtom.reportRead();
    return super.phoneTouched;
  }

  @override
  set phoneTouched(bool value) {
    _$phoneTouchedAtom.reportWrite(value, super.phoneTouched, () {
      super.phoneTouched = value;
    });
  }

  late final _$pass1Atom = Atom(name: '_SignupStore.pass1', context: context);

  @override
  String get pass1 {
    _$pass1Atom.reportRead();
    return super.pass1;
  }

  @override
  set pass1(String value) {
    _$pass1Atom.reportWrite(value, super.pass1, () {
      super.pass1 = value;
    });
  }

  late final _$pass1TouchedAtom =
      Atom(name: '_SignupStore.pass1Touched', context: context);

  @override
  bool get pass1Touched {
    _$pass1TouchedAtom.reportRead();
    return super.pass1Touched;
  }

  @override
  set pass1Touched(bool value) {
    _$pass1TouchedAtom.reportWrite(value, super.pass1Touched, () {
      super.pass1Touched = value;
    });
  }

  late final _$pass2Atom = Atom(name: '_SignupStore.pass2', context: context);

  @override
  String get pass2 {
    _$pass2Atom.reportRead();
    return super.pass2;
  }

  @override
  set pass2(String value) {
    _$pass2Atom.reportWrite(value, super.pass2, () {
      super.pass2 = value;
    });
  }

  late final _$pass2TouchedAtom =
      Atom(name: '_SignupStore.pass2Touched', context: context);

  @override
  bool get pass2Touched {
    _$pass2TouchedAtom.reportRead();
    return super.pass2Touched;
  }

  @override
  set pass2Touched(bool value) {
    _$pass2TouchedAtom.reportWrite(value, super.pass2Touched, () {
      super.pass2Touched = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_SignupStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$_signUpAsyncAction =
      AsyncAction('_SignupStore._signUp', context: context);

  @override
  Future<void> _signUp() {
    return _$_signUpAsyncAction.run(() => super._signUp());
  }

  late final _$_SignupStoreActionController =
      ActionController(name: '_SignupStore', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNameTouched(bool value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setNameTouched');
    try {
      return super.setNameTouched(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmailTouched(bool value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setEmailTouched');
    try {
      return super.setEmailTouched(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhoneTouched(bool value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPhoneTouched');
    try {
      return super.setPhoneTouched(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass1(String value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPass1');
    try {
      return super.setPass1(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass1Touched(bool value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPass1Touched');
    try {
      return super.setPass1Touched(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass2(String value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPass2');
    try {
      return super.setPass2(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPass2Touched(bool value) {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore.setPass2Touched');
    try {
      return super.setPass2Touched(value);
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _doNothing() {
    final _$actionInfo = _$_SignupStoreActionController.startAction(
        name: '_SignupStore._doNothing');
    try {
      return super._doNothing();
    } finally {
      _$_SignupStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
nameTouched: ${nameTouched},
email: ${email},
emailTouched: ${emailTouched},
phone: ${phone},
phoneTouched: ${phoneTouched},
pass1: ${pass1},
pass1Touched: ${pass1Touched},
pass2: ${pass2},
pass2Touched: ${pass2Touched},
loading: ${loading},
nameValid: ${nameValid},
emailValid: ${emailValid},
phoneValid: ${phoneValid},
pass1Valid: ${pass1Valid},
pass2Valid: ${pass2Valid},
isFormValid: ${isFormValid},
signUpPressed: ${signUpPressed}
    ''';
  }
}
