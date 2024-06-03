import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import 'package:xlo_mobx/models/user.dart';
import 'package:xlo_mobx/repositories/parse_errors.dart';
import 'package:xlo_mobx/repositories/table_keys.dart';

class UserRepository {
  Future<User> signUp(User user) async {
    final parserUser = ParseUser(user.email, user.password, user.email);

    parserUser.set<String>(keyUserName, user.name);
    parserUser.set<String>(keyUserPhone, user.phone);
    parserUser.set(keyUserType, user.type.index);

    final response = await parserUser.signUp();

    if (response.success) {
      return mapParseToUser(response.result);
    } else {
      final errorCode = response.error?.code ?? -1;
      return Future.error(ParseErrors.getDescription(errorCode));
    }
  }

  User mapParseToUser(ParseUser parseUser) {
    return User(
        id: parseUser.objectId,
        name: parseUser.get(keyUserName),
        email: parseUser.get(keyUserEmail),
        phone: parseUser.get(keyUserPhone),
        type: UserType.values[parseUser.get(keyUserType)],
        createdAt: parseUser.get(keyUserCreatedAt));
  }
}
