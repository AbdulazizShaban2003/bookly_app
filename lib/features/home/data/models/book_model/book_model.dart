import 'package:bookly/features/home/data/models/book_model/items.dart';

class BookModel {
  String? kind;
  int? totalItems;
  List<Items>? items;

  BookModel({
    this.kind,
    this.totalItems,
    this.items,
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    items = (json['items'] as List?)
        ?.map((item) => Items.fromJson(item))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kind'] = kind;
    data['totalItems'] = totalItems;
    if (items != null) {
      data['items'] = items!.map((item) => item.toJson()).toList();
    }
    return data;
  }
}
