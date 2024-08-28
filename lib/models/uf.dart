class UF {
  UF({required this.id, required this.initials, required this.name});

  factory UF.fromJson(Map<String, dynamic> json) => UF(
        id: json['id'],
        initials: json['sigla'],
        name: json['nome'],
      );

  int id;
  String initials;
  String name;

  @override
  String toString() {
    return 'UF{id: $id, initials: $initials, name: $name}';
  }
}
