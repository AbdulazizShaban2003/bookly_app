import 'package:bookly/features/home/data/models/book_model/list_price.dart';
import 'package:bookly/features/home/data/models/book_model/offers.dart';

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  ListPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;

  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  SaleInfo.fromJson(Map<String, dynamic> json)
      : country = json['country'],
        saleability = json['saleability'],
        isEbook = json['isEbook'],
        listPrice = json['listPrice'] != null ? ListPrice.fromJson(json['listPrice']) : null,
        retailPrice = json['retailPrice'] != null ? ListPrice.fromJson(json['retailPrice']) : null,
        buyLink = json['buyLink'],
        offers = json['offers'] != null
            ? (json['offers'] as List).map((v) => Offers.fromJson(v)).toList()
            : null;

  Map<String, dynamic> toJson() => {
    'country': country,
    'saleability': saleability,
    'isEbook': isEbook,
    'listPrice': listPrice?.toJson(),
    'retailPrice': retailPrice?.toJson(),
    'buyLink': buyLink,
    'offers': offers?.map((v) => v.toJson()).toList(),
  };
}
