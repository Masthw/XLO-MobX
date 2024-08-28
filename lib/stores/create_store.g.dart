// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateStore on _CreateStoreBase, Store {
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

  late final _$categoryAtom =
      Atom(name: '_CreateStoreBase.category', context: context);

  @override
  Category get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  bool _categoryIsInitialized = false;

  @override
  set category(Category value) {
    _$categoryAtom
        .reportWrite(value, _categoryIsInitialized ? super.category : null, () {
      super.category = value;
      _categoryIsInitialized = true;
    });
  }

  late final _$_CreateStoreBaseActionController =
      ActionController(name: '_CreateStoreBase', context: context);

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
  String toString() {
    return '''
images: ${images},
category: ${category}
    ''';
  }
}
