// To parse this JSON data, do
//
//     final productDetailsModel = productDetailsModelFromJson(jsonString);

import 'dart:convert';

ProductDetailsModel productDetailsModelFromJson(String str) => ProductDetailsModel.fromJson(json.decode(str));

String productDetailsModelToJson(ProductDetailsModel data) => json.encode(data.toJson());

class ProductDetailsModel {
    ProductDetailsModel({
        required this.data,
    });

    List<ProductDetailsItem> data;

    factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => ProductDetailsModel(
        data: List<ProductDetailsItem>.from(json["data"].map((x) => ProductDetailsItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class ProductDetailsItem {
    ProductDetailsItem({
        required this.id,
        required this.name,
        required this.desc,
        required this.wishlisted,
        required this.actualPrice,
        required this.discountePrice,
        required this.descount,
        required this.category,
        required this.subCategory,
        required this.type,
        required this.genre,
        required this.brand,
        required this.imageUrl,
        required this.rating,
      
    });

    String id;
    String name;
    String desc;
    String wishlisted;
    String actualPrice;
    String discountePrice;
    String descount;
    String category;
    String subCategory;
    String type;
    String genre;
    String brand;
    String imageUrl;
    String rating;
   

    factory ProductDetailsItem.fromJson(Map<String, dynamic> json) => ProductDetailsItem(
        id: json["_id"],
        name: json["name"],
        desc: json["desc"],
        wishlisted: json["wishlisted"],
        actualPrice: json["actual_price"],
        discountePrice: json["discounte_price"],
        descount: json["descount"],
        category: json["category"],
        subCategory: json["sub_category"],
        type: json["type"],
        genre: json["genre"],
        brand: json["brand"],
        imageUrl: json["image_url"],
        rating: json["rating"],
   
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "desc": desc,
        "wishlisted": wishlisted,
        "actual_price": actualPrice,
        "discounte_price": discountePrice,
        "descount": descount,
        "category": category,
        "sub_category": subCategory,
        "type": type,
        "genre": genre,
        "brand": brand,
        "image_url": imageUrl,
        "rating": rating,
        
    };
}
