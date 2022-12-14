// To parse this JSON data, do
//
//     final registerModel = registerModelFromJson(jsonString);

import 'dart:convert';

RegisterModel registerModelFromJson(String str) => RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {
    RegisterModel({
        this.mobileNo,
        this.password,
        this.fullName,
        this.email,
        this.gender,
        this.alternateMoNumber,
        this.hint,
    });

    String? mobileNo;
    String? password;
    String? fullName;
    String? email;
    String? gender;
    String? alternateMoNumber;
    String? hint;

    factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        mobileNo: json["mobileNo"],
        password: json["password"],
        fullName: json["fullName"],
        email: json["Email"],
        gender: json["gender"],
        alternateMoNumber: json["alternateMoNumber"],
        hint: json["hint"],
    );

    Map<String, dynamic> toJson() => {
        "mobileNo": mobileNo,
        "password": password,
        "fullName": fullName,
        "Email": email,
        "gender": gender,
        "alternateMoNumber": alternateMoNumber,
        "hint": hint,
    };
}
