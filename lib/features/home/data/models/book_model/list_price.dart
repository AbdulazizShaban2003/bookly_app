class ListPrice {
  int? amountInMicros;
  String? currencyCode;

  ListPrice({this.amountInMicros, this.currencyCode});

  ListPrice.fromJson(Map<String, dynamic> json)
      : amountInMicros = json['amountInMicros'],
        currencyCode = json['currencyCode'];

  Map<String, dynamic> toJson() => {
    'amountInMicros': amountInMicros,
    'currencyCode': currencyCode,
  };
}
