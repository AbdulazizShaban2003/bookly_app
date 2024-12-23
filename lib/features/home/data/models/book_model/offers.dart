import 'package:bookly/features/home/data/models/book_model/list_price.dart';
import 'book_model.dart';

class Offers {
  int? finskyOfferType;
  ListPrice? listPrice;
  ListPrice? retailPrice;

  Offers({this.finskyOfferType, this.listPrice, this.retailPrice});

  Offers.fromJson(Map<String, dynamic> json)
      : finskyOfferType = json['finskyOfferType'],
        listPrice = json['listPrice'] != null ? ListPrice.fromJson(json['listPrice']) : null,
        retailPrice = json['retailPrice'] != null ? ListPrice.fromJson(json['retailPrice']) : null;

  Map<String, dynamic> toJson() => {
    'finskyOfferType': finskyOfferType,
    'listPrice': listPrice?.toJson(),
    'retailPrice': retailPrice?.toJson(),
  };
}
