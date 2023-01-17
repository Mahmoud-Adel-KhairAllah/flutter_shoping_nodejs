// To parse this JSON data, do
//
    // final categoryDetailsModel = categoryDetailsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CategoryDetailsModel categoryDetailsModelFromJson(String str) => CategoryDetailsModel.fromJson(json.decode(str));

String categoryDetailsModelToJson(CategoryDetailsModel data) => json.encode(data.toJson());

class CategoryDetailsModel {
    CategoryDetailsModel({
        required this.data,
    });

    List<CategoryDetailsItem> data;

    factory CategoryDetailsModel.fromJson(Map<String, dynamic> json) => CategoryDetailsModel(
        data: List<CategoryDetailsItem>.from(json["data"].map((x) => CategoryDetailsItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class CategoryDetailsItem {
    CategoryDetailsItem({
        required this.id,
        required this.name,
        required this.desc,
        required this.imageUrl,
        required this.backgroundColor,
        required this.subCategory,
        required this.v,
    });

    String id;
    String name;
    String desc;
    String imageUrl;
    String backgroundColor;
    List<SubCategory> subCategory;
    int v;

    factory CategoryDetailsItem.fromJson(Map<String, dynamic> json) => CategoryDetailsItem(
        id: json["_id"],
        name: json["name"],
        desc: json["desc"],
        imageUrl: json["imageUrl"],
        backgroundColor: json["backgroundColor"],
        subCategory: List<SubCategory>.from(json["subCategory"].map((x) => SubCategory.fromJson(x))),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "desc": desc,
        "backgroundColor": backgroundColor,
        "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
        "__v": v,
    };
}

class SubCategory {
    SubCategory({
        required this.name,
        required this.imageUrl,
        required this.isExpandable,
        required this.leafcategory,
        required this.id,
    });

    String name;
    String imageUrl;
    bool isExpandable;
    List<Leafcategory> leafcategory;
    String id;

    factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        name: json["name"],
        imageUrl: json["imageUrl"],
        isExpandable: json["isExpandable"],
        leafcategory: List<Leafcategory>.from(json["leafcategory"].map((x) => Leafcategory.fromJson(x))),
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "imageUrl": imageUrl,
        "isExpandable": isExpandable,
        "leafcategory": List<dynamic>.from(leafcategory.map((x) => x.toJson())),
        "_id": id,
    };
}

class Leafcategory {
    Leafcategory({
        required this.name,
        required this.id,
    });

    String name;
    String id;

    factory Leafcategory.fromJson(Map<String, dynamic> json) => Leafcategory(
        name: json["name"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "_id": id,
    };
}
