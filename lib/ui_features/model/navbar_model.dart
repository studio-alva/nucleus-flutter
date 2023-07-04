// To parse this JSON data, do
//
//     final navbarModel = navbarModelFromJson(jsonString);

import 'dart:convert';

List<NavbarModel> navbarModelFromJson(String str) => List<NavbarModel>.from(
    json.decode(str).map((x) => NavbarModel.fromJson(x)));

String navbarModelToJson(List<NavbarModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NavbarModel {
  String icon;
  String title;
  bool status;

  NavbarModel({
    required this.icon,
    required this.title,
    required this.status,
  });

  factory NavbarModel.fromJson(Map<String, dynamic> json) => NavbarModel(
        icon: json["icon"],
        title: json["title"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon,
        "title": title,
        "status": status,
      };
}
