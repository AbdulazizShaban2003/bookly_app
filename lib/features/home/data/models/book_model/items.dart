import 'package:bookly/features/home/data/models/book_model/sale_info.dart';
import 'package:bookly/features/home/data/models/book_model/search_info.dart';
import 'package:bookly/features/home/data/models/book_model/volume_info.dart';

import 'access_info.dart';

class Items {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Items({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  Items.fromJson(Map<String, dynamic> json)
      : kind = json['kind'],
        id = json['id'],
        etag = json['etag'],
        selfLink = json['selfLink'],
        volumeInfo = json['volumeInfo'] != null
            ? VolumeInfo.fromJson(json['volumeInfo'])
            : null,
        saleInfo = json['saleInfo'] != null
            ? SaleInfo.fromJson(json['saleInfo'])
            : null,
        accessInfo = json['accessInfo'] != null
            ? AccessInfo.fromJson(json['accessInfo'])
            : null,
        searchInfo = json['searchInfo'] != null
            ? SearchInfo.fromJson(json['searchInfo'])
            : null;

  Map<String, dynamic> toJson() => {
    'kind': kind,
    'id': id,
    'etag': etag,
    'selfLink': selfLink,
    if (volumeInfo != null) 'volumeInfo': volumeInfo!.toJson(),
    if (saleInfo != null) 'saleInfo': saleInfo!.toJson(),
    if (accessInfo != null) 'accessInfo': accessInfo!.toJson(),
    if (searchInfo != null) 'searchInfo': searchInfo!.toJson(),
  };
}
