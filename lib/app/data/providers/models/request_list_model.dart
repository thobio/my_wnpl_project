// To parse this JSON data, do
//
//     final requestList = requestListFromJson(jsonString);

import 'dart:convert';

RequestList requestListFromJson(String str) =>
    RequestList.fromJson(json.decode(str));

String requestListToJson(RequestList data) => json.encode(data.toJson());

class RequestList {
  RequestList({
    required this.meta,
    required this.data,
  });

  Meta meta;
  Data data;

  factory RequestList.fromJson(Map<String, dynamic> json) => RequestList(
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
    required this.requests,
  });

  List<Request> requests;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        requests: List<Request>.from(
            json["requests"].map((x) => Request.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "requests": List<dynamic>.from(requests.map((x) => x.toJson())),
      };
}

class Request {
  Request({
    required this.prospectId,
    required this.prospectName,
    required this.prospectPhone,
    required this.prospectEmail,
    required this.prospectMessage,
    required this.prospectSearchTerm,
    required this.prospectLocation,
    required this.prospectDateTime,
  });

  String prospectId;
  String prospectName;
  String prospectPhone;
  String prospectEmail;
  String prospectMessage;
  String prospectSearchTerm;
  String prospectLocation;
  String prospectDateTime;

  factory Request.fromJson(Map<String, dynamic> json) => Request(
        prospectId: json["prospectId"],
        prospectName: json["prospectName"],
        prospectPhone: json["prospectPhone"],
        prospectEmail: json["prospectEmail"],
        prospectMessage: json["prospectMessage"],
        prospectSearchTerm: json["prospectSearchTerm"],
        prospectLocation: json["prospectLocation"],
        prospectDateTime: json["prospectDateTime"],
      );

  Map<String, dynamic> toJson() => {
        "prospectId": prospectId,
        "prospectName": prospectName,
        "prospectPhone": prospectPhone,
        "prospectEmail": prospectEmail,
        "prospectMessage": prospectMessage,
        "prospectSearchTerm": prospectSearchTerm,
        "prospectLocation": prospectLocation,
        "prospectDateTime": prospectDateTime,
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
