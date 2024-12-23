class Epub {
  bool? isAvailable;
  String? acsTokenLink;

  Epub({
    this.isAvailable,
    this.acsTokenLink,
  });

  Epub.fromJson(Map<String, dynamic> json)
      : isAvailable = json['isAvailable'],
        acsTokenLink = json['acsTokenLink'];

  Map<String, dynamic> toJson() => {
    'isAvailable': isAvailable,
    'acsTokenLink': acsTokenLink,
  };
}
