// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateStore on _CreateStoreBase, Store {
  Computed<bool>? _$imagesValidComputed;

  @override
  bool get imagesValid =>
      (_$imagesValidComputed ??= Computed<bool>(() => super.imagesValid,
              name: '_CreateStoreBase.imagesValid'))
          .value;
  Computed<bool>? _$titleValidComputed;

  @override
  bool get titleValid =>
      (_$titleValidComputed ??= Computed<bool>(() => super.titleValid,
              name: '_CreateStoreBase.titleValid'))
          .value;
  Computed<bool>? _$descriptionValidComputed;

  @override
  bool get descriptionValid => (_$descriptionValidComputed ??= Computed<bool>(
          () => super.descriptionValid,
          name: '_CreateStoreBase.descriptionValid'))
      .value;
  Computed<bool>? _$categoryValidComputed;

  @override
  bool get categoryValid =>
      (_$categoryValidComputed ??= Computed<bool>(() => super.categoryValid,
              name: '_CreateStoreBase.categoryValid'))
          .value;
  Computed<Address?>? _$addressComputed;

  @override
  Address? get address =>
      (_$addressComputed ??= Computed<Address?>(() => super.address,
              name: '_CreateStoreBase.address'))
          .value;
  Computed<num?>? _$priceComputed;

  @override
  num? get price => (_$priceComputed ??=
          Computed<num?>(() => super.price, name: '_CreateStoreBase.price'))
      .value;
  Computed<bool>? _$formValidComputed;

  @override
  bool get formValid =>
      (_$formValidComputed ??= Computed<bool>(() => super.formValid,
              name: '_CreateStoreBase.formValid'))
          .value;
  Computed<VoidCallback?>? _$sendPressedComputed;

  @override
  VoidCallback? get sendPressed => (_$sendPressedComputed ??=
          Computed<VoidCallback?>(() => super.sendPressed,
              name: '_CreateStoreBase.sendPressed'))
      .value;

  late final _$imagesAtom =
      Atom(name: '_CreateStoreBase.images', context: context);

  @override
  ObservableList<dynamic> get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(ObservableList<dynamic> value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  late final _$titleAtom =
      Atom(name: '_CreateStoreBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_CreateStoreBase.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$categoryAtom =
      Atom(name: '_CreateStoreBase.category', context: context);

  @override
  Category? get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(Category? value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  late final _$priceTextAtom =
      Atom(name: '_CreateStoreBase.priceText', context: context);

  @override
  String get priceText {
    _$priceTextAtom.reportRead();
    return super.priceText;
  }

  @override
  set priceText(String value) {
    _$priceTextAtom.reportWrite(value, super.priceText, () {
      super.priceText = value;
    });
  }

  late final _$hidePhoneAtom =
      Atom(name: '_CreateStoreBase.hidePhone', context: context);

  @override
  bool get hidePhone {
    _$hidePhoneAtom.reportRead();
    return super.hidePhone;
  }

  @override
  set hidePhone(bool value) {
    _$hidePhoneAtom.reportWrite(value, super.hidePhone, () {
      super.hidePhone = value;
    });
  }

  late final _$showErrorsAtom =
      Atom(name: '_CreateStoreBase.showErrors', context: context);

  @override
  bool get showErrors {
    _$showErrorsAtom.reportRead();
    return super.showErrors;
  }

  @override
  set showErrors(bool value) {
    _$showErrorsAtom.reportWrite(value, super.showErrors, () {
      super.showErrors = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_CreateStoreBase.loading', context: context);

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

  late final _$errorAtom =
      Atom(name: '_CreateStoreBase.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$_sendAsyncAction =
      AsyncAction('_CreateStoreBase._send', context: context);

  @override
  Future _send() {
    return _$_sendAsyncAction.run(() => super._send());
  }

  late final _$_CreateStoreBaseActionController =
      ActionController(name: '_CreateStoreBase', context: context);

  @override
  void setTitle(String value) {
    final _$actionInfo = _$_CreateStoreBaseActionController.startAction(
        name: '_CreateStoreBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_CreateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String value) {
    final _$actionInfo = _$_CreateStoreBaseActionController.startAction(
        name: '_CreateStoreBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_CreateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCategory(Category value) {
    final _$actionInfo = _$_CreateStoreBaseActionController.startAction(
        name: '_CreateStoreBase.setCategory');
    try {
      return super.setCategory(value);
    } finally {
      _$_CreateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPrice(String value) {
    final _$actionInfo = _$_CreateStoreBaseActionController.startAction(
        name: '_CreateStoreBase.setPrice');
    try {
      return super.setPrice(value);
    } finally {
      _$_CreateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHidePhone(bool? value) {
    final _$actionInfo = _$_CreateStoreBaseActionController.startAction(
        name: '_CreateStoreBase.setHidePhone');
    try {
      return super.setHidePhone(value);
    } finally {
      _$_CreateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_CreateStoreBaseActionController.startAction(
        name: '_CreateStoreBase.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_CreateStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
images: ${images},
title: ${title},
description: ${description},
category: ${category},
priceText: ${priceText},
hidePhone: ${hidePhone},
showErrors: ${showErrors},
loading: ${loading},
error: ${error},
imagesValid: ${imagesValid},
titleValid: ${titleValid},
descriptionValid: ${descriptionValid},
categoryValid: ${categoryValid},
address: ${address},
price: ${price},
formValid: ${formValid},
sendPressed: ${sendPressed}
    ''';
  }
}
