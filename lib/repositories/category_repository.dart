import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:xlo_mobx/models/category.dart';
import 'package:xlo_mobx/repositories/parse_errors.dart';
import 'package:xlo_mobx/repositories/table_keys.dart';

class CategoryRepository {
  Future<List<Category>> getList() async {
    final queryBuilder = QueryBuilder(ParseObject(keyCategoryTable))
      ..orderByAscending(keyCategoryDescription);

    print('Executando query no Parse...');

    final response = await queryBuilder.query();

    if (response.success) {
      print('Resposta do Parse: ${response.results}');
      return response.results?.map((p) {
            print('Categoria recebida: $p');
            return Category.fromParse(p);
          }).toList() ??
          [];
    } else {
      print('Erro do Parse: ${response.error!.code}');
      throw ParseErrors.getDescription(response.error!.code);
    }
  }
}
