// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String name;
  String mobile;
  String email;
  String dateOfBirth;
  String image;
  UserModel({
    required this.name,
    required this.mobile,
    required this.email,
    required this.dateOfBirth,
    required this.image,
  });

  UserModel copyWith({
    String? name,
    String? mobile,
    String? email,
    String? dateOfBirth,
    String? image,
  }) {
    return UserModel(
      name: name ?? this.name,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'mobile': mobile,
      'email': email,
      'dateOfBirth': dateOfBirth,
      'image': image,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      mobile: map['mobile'] as String,
      email: map['email'] as String,
      dateOfBirth: map['dateOfBirth'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, mobile: $mobile, email: $email, dateOfBirth: $dateOfBirth, image: $image)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.mobile == mobile &&
        other.email == email &&
        other.dateOfBirth == dateOfBirth &&
        other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        mobile.hashCode ^
        email.hashCode ^
        dateOfBirth.hashCode ^
        image.hashCode;
  }
}
