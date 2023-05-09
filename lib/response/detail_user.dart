// To parse this JSON data, do
//
//     final detailUser = detailUserFromJson(jsonString);

import 'dart:convert';

DetailUser detailUserFromJson(String str) => DetailUser.fromJson(json.decode(str));

String detailUserToJson(DetailUser data) => json.encode(data.toJson());

class DetailUser {
    int? id;
    String? email;
    String? firstName;
    String? lastName;
    String? avatar;

    DetailUser({
        this.id,
        this.email,
        this.firstName,
        this.lastName,
        this.avatar,
    });

    factory DetailUser.fromJson(Map<String, dynamic> json) => DetailUser(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
    };
}
