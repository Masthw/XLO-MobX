import 'package:mobx/mobx.dart';
import 'package:xlo_mobx/models/category.dart';
import 'package:xlo_mobx/repositories/category_repository.dart';
part 'category_store.g.dart';

class CategoryStore = _CategoryStoreBase with _$CategoryStore;

abstract class _CategoryStoreBase with Store {
  _CategoryStore() {
    print('Inicializando CategoryStore');
    _loadCategories();
  }

  ObservableList<Category> categoryList = ObservableList<Category>();

  @computed
  List<Category> get allCategoryList => List.from(categoryList)
    ..insert(0, Category(id: '*', description: 'Todas'));

  @action
  void setCategories(List<Category> categories) {
    categoryList.clear();
    categoryList.addAll(categories);
    print('Categorias configuradas: $categoryList');
  }

  @observable
  String? error;

  @action
  void setError(String value) {
    error = value;
    print('Erro configurado: $error');
  }

  Future<void> _loadCategories() async {
    try {
      final categories = await CategoryRepository().getList();
      print('Categorias carregadas: $categories');
      setCategories(categories);
    } catch (e) {
      print('Erro ao carregar categorias: $e');
      setError(e.toString());
    }
  }
}
