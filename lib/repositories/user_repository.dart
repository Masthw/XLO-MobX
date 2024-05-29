import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:xlo_mobx/models/user.dart';
import 'package:xlo_mobx/repositories/table_keys.dart';

class UserRepository {
  Future<void> signUp(User user) async {
    final parserUser = ParseUser(user.email, user.password, user.email);

    parserUser.set<String>(keyUserName, user.name);
    parserUser.set<String>(keyUserPhone, user.phone);
    parserUser.set(keyUserType, user.type.index);

    await parserUser.signUp();
  }
}
