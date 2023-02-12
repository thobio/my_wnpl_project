// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.meta,
    required this.data,
  });

  Meta meta;
  Data data;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        meta: Meta.fromJson(json["meta"]),
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "meta": meta.toJson(),
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.operatorId,
  });

  String operatorId;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        operatorId: json["operatorId"],
      );

  Map<String, dynamic> toJson() => {
        "operatorId": operatorId,
      };
}

class Meta {
  Meta({
    this.uid,
    required this.eid,
    required this.edescp,
  });

  dynamic uid;
  int eid;
  String edescp;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        uid: json["uid"],
        eid: json["eid"],
        edescp: json["edescp"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "eid": eid,
        "edescp": edescp,
      };
}
