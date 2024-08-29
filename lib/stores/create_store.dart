import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/models/category.dart';
part 'create_store.g.dart';

// ignore: library_private_types_in_public_api
class CreateStore = _CreateStoreBase with _$CreateStore;

abstract class _CreateStoreBase with Store {
  @observable
  ObservableList images = ObservableList();

  @observable
  Category? category;

  @action
  void setCategory(Category value) => category = value;
}
