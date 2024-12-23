import 'package:bookly/features/home/data/models/book_model/image_links.dart';
import 'package:bookly/features/home/data/models/book_model/panelization_summary.dart';
import 'package:bookly/features/home/data/models/book_model/reading_modes.dart';
import 'package:bookly/features/home/data/models/book_model/industry_identifiers.dart';

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;
  double? averageRating;
  int? ratingsCount;

  VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.averageRating,
    this.ratingsCount,
  });

  VolumeInfo.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        authors = json['authors']?.cast<String>(),
        publisher = json['publisher'],
        publishedDate = json['publishedDate'],
        description = json['description'],
        industryIdentifiers = (json['industryIdentifiers'] as List?)
            ?.map((v) => IndustryIdentifiers.fromJson(v))
            .toList(),
        readingModes = json['readingModes'] != null
            ? ReadingModes.fromJson(json['readingModes'])
            : null,
        pageCount = json['pageCount'],
        printType = json['printType'],
        categories = json['categories']?.cast<String>(),
        maturityRating = json['maturityRating'],
        allowAnonLogging = json['allowAnonLogging'],
        contentVersion = json['contentVersion'],
        panelizationSummary = json['panelizationSummary'] != null
            ? PanelizationSummary.fromJson(json['panelizationSummary'])
            : null,
        imageLinks = json['imageLinks'] != null
            ? ImageLinks.fromJson(json['imageLinks'])
            : null,
        language = json['language'],
        previewLink = json['previewLink'],
        infoLink = json['infoLink'],
        canonicalVolumeLink = json['canonicalVolumeLink'],
        averageRating = json['averageRating'],
        ratingsCount = json['ratingsCount'];

  Map<String, dynamic> toJson() => {
    'title': title,
    'authors': authors,
    'publisher': publisher,
    'publishedDate': publishedDate,
    'description': description,
    'industryIdentifiers': industryIdentifiers?.map((v) => v.toJson()).toList(),
    'readingModes': readingModes?.toJson(),
    'pageCount': pageCount,
    'printType': printType,
    'categories': categories,
    'maturityRating': maturityRating,
    'allowAnonLogging': allowAnonLogging,
    'contentVersion': contentVersion,
    'panelizationSummary': panelizationSummary?.toJson(),
    'imageLinks': imageLinks?.toJson(),
    'language': language,
    'previewLink': previewLink,
    'infoLink': infoLink,
    'canonicalVolumeLink': canonicalVolumeLink,
    'averageRating': averageRating,
    'ratingsCount': ratingsCount,
  };
}
