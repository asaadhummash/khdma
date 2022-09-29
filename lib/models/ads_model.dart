// To parse this JSON data, do
//
//     final adsModel = adsModelFromJson(jsonString);

import 'dart:convert';

List<AdsModel> adsModelFromJson(String str) => List<AdsModel>.from(json.decode(str).map((x) => AdsModel.fromJson(x)));

String adsModelToJson(List<AdsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AdsModel {
  AdsModel({
    // this.id,
    // this.title,
    // this.body,
    this.imgPath,
    // this.orders,
    // this.type,
    // this.status,
    // this.userId,
    // this.createdAt,
    // this.updatedAt,
  });

  // int? id;
  // String? title;
  // String? body;
  String? imgPath;
  // String? orders;
  // String? type;
  // String? status;
  // String? userId;
  // DateTime? createdAt;
  // DateTime? updatedAt;

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
    // id: json["id"],
    // title: json["title"],
    // body: json["body"],
    imgPath: json["img_path"],
    // orders: json["orders"],
    // type: json["type"],
    // status: json["status"],
    // userId: json["user_id"],
    // createdAt: DateTime.parse(json["created_at"]),
    // updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    // "id": id,
    // "title": title,
    // "body": body,
    "img_path": imgPath,
    // "orders": orders,
    // "type": type,
    // "status": status,
    // "user_id": userId,
    // "created_at": createdAt,
    // "updated_at": updatedAt,
  };
}
