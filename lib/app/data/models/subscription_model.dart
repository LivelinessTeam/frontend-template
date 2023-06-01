import 'dart:convert';

class Subscription {
  Subscription({this.productID, this.purchaseID, this.transactionDate});

  String? productID;
  String? purchaseID;
  String? transactionDate;

  factory Subscription.fromRawJson(String str) =>
      Subscription.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
        productID: json["productID"],
        purchaseID: json["purchaseID"],
        transactionDate: json["transactionDate"],
      );

  Map<String, dynamic> toJson() => {
        "productID": productID,
        "purchaseID": purchaseID,
        "transactionDate": transactionDate,
      };
}
