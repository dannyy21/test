class UserModel {
  final int id;
  final String nik;
  final String name;
  final String position;

  UserModel(
      {required this.id,
      required this.nik,
      required this.name,
      required this.position});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json['id'],
        nik: json['nik'],
        name: json['name'] ?? 'First Name',
        position: json['position']);
  }
}
