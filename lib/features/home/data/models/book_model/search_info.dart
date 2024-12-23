class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  SearchInfo.fromJson(Map<String, dynamic> json)
      : textSnippet = json['textSnippet'];

  Map<String, dynamic> toJson() => {
    'textSnippet': textSnippet,
  };
}
