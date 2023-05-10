// To parse this JSON data, do
//
//     final newUser = newUserFromJson(jsonString);

import 'dart:convert';

NewUser newUserFromJson(String str) => NewUser.fromJson(json.decode(str));

String newUserToJson(NewUser data) => json.encode(data.toJson());

class NewUser {
    String? name;
    String? job;
    String? id;
    DateTime? createdAt;

    NewUser({
        this.name,
        this.job,
        this.id,
        this.createdAt,
    });

    factory NewUser.fromJson(Map<String, dynamic> json) => NewUser(
        name: json["name"],
        job: json["job"],
        id: json["id"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "job": job,
        "id": id,
        "createdAt": createdAt?.toIso8601String(),
    };
}
