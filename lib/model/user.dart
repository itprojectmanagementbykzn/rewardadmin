class User {
  final String name;
  final String phone;
  final String code;
  final String email;
  final String totalpoint;
  final String birthday;

  const User({
    required this.name,
    required this.phone,
    required this.code,
    required this.email,
    required this.totalpoint,
    required this.birthday
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json['name'],
        code: json['code'],
        phone: json['phone'],
        email: json['email'],
        totalpoint: json['totalpoint'],
        birthday: json['birthday']
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          phone == other.phone &&
          code == other.code &&
          email == other.email &&
          totalpoint == other.totalpoint &&
          birthday == other.birthday;

  @override
  int get hashCode => name.hashCode ^ phone.hashCode ^ code.hashCode ^ email.hashCode ^ totalpoint.hashCode ^ birthday.hashCode;
}
