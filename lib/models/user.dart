enum UserType { PARTICULAR, PROFESSIONAL }

class User {
  User(
      {required this.name,
      required this.email,
      required this.phone,
      required this.password,
      this.type = UserType.PARTICULAR});

  String name;
  String email;
  String phone;
  String password;
  UserType type;
}
