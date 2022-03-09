import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}

@freezed
class AccessInfo with _$AccessInfo {
  factory AccessInfo({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) = _AccessInfo;

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
}

@freezed
class Pdf with _$Pdf {
  factory Pdf({
    bool? isAvailable,
  }) = _Pdf;

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);
}

@freezed
class Epub with _$Epub {
  factory Epub({
    bool? isAvailable,
  }) = _Epub;

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);
}

@freezed
class SaleInfo with _$SaleInfo {
  factory SaleInfo({
    String? country,
    String? saleability,
    bool? isEbook,
  }) = _SaleInfo;

  factory SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$SaleInfoFromJson(json);
}

@freezed
class SearchInfo with _$SearchInfo {
  factory SearchInfo({
    String? textSnippet,
  }) = _SearchInfo;

  factory SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchInfoFromJson(json);
}

@freezed
class VolumeInfo with _$VolumeInfo {
  factory VolumeInfo({
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifier>? industryIdentifiers,
    ReadingModes? readingModes,
    int? pageCount,
    String? printType,
    List<String>? categories,
    double? averageRating,
    int? ratingsCount,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}

@freezed
class ImageLinks with _$ImageLinks {
  factory ImageLinks({
    String? smallThumbnail,
    String? thumbnail,
  }) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$ImageLinksFromJson(json);
}

@freezed
class IndustryIdentifier with _$IndustryIdentifier {
  factory IndustryIdentifier({
    String? type,
    String? identifier,
  }) = _IndustryIdentifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);
}

@freezed
class ReadingModes with _$ReadingModes {
  factory ReadingModes({
    bool? text,
    bool? image,
  }) = _ReadingModes;

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);
}



// class Book {
//   Book({
//     this.kind,
//     this.id,
//     this.etag,
//     this.selfLink,
//     this.volumeInfo,
//     this.saleInfo,
//     this.accessInfo,
//     this.searchInfo,
//   });

//   factory Book.fromJson(Map<String, dynamic> json) => Book(
//         kind: json['kind'] as String?,
//         id: json['id'] as String?,
//         etag: json['etag'] as String?,
//         selfLink: json['selfLink'] as String?,
//         volumeInfo: json['volumeInfo'] == null
//             ? null
//             : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
//         saleInfo: json['saleInfo'] == null
//             ? null
//             : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
//         accessInfo: json['accessInfo'] == null
//             ? null
//             : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
//         searchInfo: json['searchInfo'] == null
//             ? null
//             : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
//       );

//   String? kind;
//   String? id;
//   String? etag;
//   String? selfLink;
//   VolumeInfo? volumeInfo;
//   SaleInfo? saleInfo;
//   AccessInfo? accessInfo;
//   SearchInfo? searchInfo;

//   @override
//   String toString() {
//     return 'Book(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo, searchInfo: $searchInfo)';
//   }

//   Map<String, dynamic> toJson() => {
//         'kind': kind,
//         'id': id,
//         'etag': etag,
//         'selfLink': selfLink,
//         'volumeInfo': volumeInfo?.toJson(),
//         'saleInfo': saleInfo?.toJson(),
//         'accessInfo': accessInfo?.toJson(),
//         'searchInfo': searchInfo?.toJson(),
//       };
// }

// class AccessInfo {
//   AccessInfo({
//     this.country,
//     this.viewability,
//     this.embeddable,
//     this.publicDomain,
//     this.textToSpeechPermission,
//     this.epub,
//     this.pdf,
//     this.webReaderLink,
//     this.accessViewStatus,
//     this.quoteSharingAllowed,
//   });

//   factory AccessInfo.fromJson(Map<String, dynamic> json) => AccessInfo(
//         country: json['country'] as String?,
//         viewability: json['viewability'] as String?,
//         embeddable: json['embeddable'] as bool?,
//         publicDomain: json['publicDomain'] as bool?,
//         textToSpeechPermission: json['textToSpeechPermission'] as String?,
//         epub: json['epub'] == null
//             ? null
//             : Epub.fromJson(json['epub'] as Map<String, dynamic>),
//         pdf: json['pdf'] == null
//             ? null
//             : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
//         webReaderLink: json['webReaderLink'] as String?,
//         accessViewStatus: json['accessViewStatus'] as String?,
//         quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
//       );

//   String? country;
//   String? viewability;
//   bool? embeddable;
//   bool? publicDomain;
//   String? textToSpeechPermission;
//   Epub? epub;
//   Pdf? pdf;
//   String? webReaderLink;
//   String? accessViewStatus;
//   bool? quoteSharingAllowed;

//   @override
//   String toString() {
//     return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, epub: $epub, pdf: $pdf, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
//   }

//   Map<String, dynamic> toJson() => {
//         'country': country,
//         'viewability': viewability,
//         'embeddable': embeddable,
//         'publicDomain': publicDomain,
//         'textToSpeechPermission': textToSpeechPermission,
//         'epub': epub?.toJson(),
//         'pdf': pdf?.toJson(),
//         'webReaderLink': webReaderLink,
//         'accessViewStatus': accessViewStatus,
//         'quoteSharingAllowed': quoteSharingAllowed,
//       };
// }

// class Pdf {
//   Pdf({this.isAvailable});

//   factory Pdf.fromJson(Map<String, dynamic> json) => Pdf(
//         isAvailable: json['isAvailable'] as bool?,
//       );

//   bool? isAvailable;

//   @override
//   String toString() => 'Pdf(isAvailable: $isAvailable)';

//   Map<String, dynamic> toJson() => {
//         'isAvailable': isAvailable,
//       };
// }

// class Epub {
//   Epub({this.isAvailable});

//   factory Epub.fromJson(Map<String, dynamic> json) => Epub(
//         isAvailable: json['isAvailable'] as bool?,
//       );

//   bool? isAvailable;

//   @override
//   String toString() => 'Epub(isAvailable: $isAvailable)';

//   Map<String, dynamic> toJson() => {
//         'isAvailable': isAvailable,
//       };
// }

// class SaleInfo {
//   SaleInfo({this.country, this.saleability, this.isEbook});

//   factory SaleInfo.fromJson(Map<String, dynamic> json) => SaleInfo(
//         country: json['country'] as String?,
//         saleability: json['saleability'] as String?,
//         isEbook: json['isEbook'] as bool?,
//       );

//   String? country;
//   String? saleability;
//   bool? isEbook;

//   @override
//   String toString() {
//     return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook)';
//   }

//   Map<String, dynamic> toJson() => {
//         'country': country,
//         'saleability': saleability,
//         'isEbook': isEbook,
//       };
// }

// class SearchInfo {
//   SearchInfo({this.textSnippet});

//   factory SearchInfo.fromJson(Map<String, dynamic> json) => SearchInfo(
//         textSnippet: json['textSnippet'] as String?,
//       );

//   String? textSnippet;

//   @override
//   String toString() => 'SearchInfo(textSnippet: $textSnippet)';

//   Map<String, dynamic> toJson() => {
//         'textSnippet': textSnippet,
//       };
// }

// class VolumeInfo {
//   VolumeInfo({
//     this.title,
//     this.authors,
//     this.publisher,
//     this.publishedDate,
//     this.description,
//     this.industryIdentifiers,
//     this.readingModes,
//     this.pageCount,
//     this.printType,
//     this.categories,
//     this.averageRating,
//     this.ratingsCount,
//     this.maturityRating,
//     this.allowAnonLogging,
//     this.contentVersion,
//     this.imageLinks,
//     this.language,
//     this.previewLink,
//     this.infoLink,
//     this.canonicalVolumeLink,
//   });

//   factory VolumeInfo.fromJson(Map<String, dynamic> json) => VolumeInfo(
//         title: json['title'] as String?,
//         authors: json['authors'] as List<String>?,
//         publisher: json['publisher'] as String?,
//         publishedDate: json['publishedDate'] as String?,
//         description: json['description'] as String?,
//         industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
//             ?.map(
//               (dynamic e) =>
//                   IndustryIdentifier.fromJson(e as Map<String, dynamic>),
//             )
//             .toList(),
//         readingModes: json['readingModes'] == null
//             ? null
//             : ReadingModes.fromJson(
//                 json['readingModes'] as Map<String, dynamic>,
//               ),
//         pageCount: json['pageCount'] as int?,
//         printType: json['printType'] as String?,
//         categories: json['categories'] as List<String>?,
//         averageRating: json['averageRating'] as int?,
//         ratingsCount: json['ratingsCount'] as int?,
//         maturityRating: json['maturityRating'] as String?,
//         allowAnonLogging: json['allowAnonLogging'] as bool?,
//         contentVersion: json['contentVersion'] as String?,
//         imageLinks: json['imageLinks'] == null
//             ? null
//             : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
//         language: json['language'] as String?,
//         previewLink: json['previewLink'] as String?,
//         infoLink: json['infoLink'] as String?,
//         canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
//       );

//   String? title;
//   List<String>? authors;
//   String? publisher;
//   String? publishedDate;
//   String? description;
//   List<IndustryIdentifier>? industryIdentifiers;
//   ReadingModes? readingModes;
//   int? pageCount;
//   String? printType;
//   List<String>? categories;
//   int? averageRating;
//   int? ratingsCount;
//   String? maturityRating;
//   bool? allowAnonLogging;
//   String? contentVersion;
//   ImageLinks? imageLinks;
//   String? language;
//   String? previewLink;
//   String? infoLink;
//   String? canonicalVolumeLink;

//   @override
//   String toString() {
//     return 'VolumeInfo(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, pageCount: $pageCount, printType: $printType, categories: $categories, averageRating: $averageRating, ratingsCount: $ratingsCount, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
//   }

//   Map<String, dynamic> toJson() => {
//         'title': title,
//         'authors': authors,
//         'publisher': publisher,
//         'publishedDate': publishedDate,
//         'description': description,
//         'industryIdentifiers':
//             industryIdentifiers?.map((e) => e.toJson()).toList(),
//         'readingModes': readingModes?.toJson(),
//         'pageCount': pageCount,
//         'printType': printType,
//         'categories': categories,
//         'averageRating': averageRating,
//         'ratingsCount': ratingsCount,
//         'maturityRating': maturityRating,
//         'allowAnonLogging': allowAnonLogging,
//         'contentVersion': contentVersion,
//         'imageLinks': imageLinks?.toJson(),
//         'language': language,
//         'previewLink': previewLink,
//         'infoLink': infoLink,
//         'canonicalVolumeLink': canonicalVolumeLink,
//       };
// }

// class ImageLinks {
//   ImageLinks({this.smallThumbnail, this.thumbnail});

//   factory ImageLinks.fromJson(Map<String, dynamic> json) => ImageLinks(
//         smallThumbnail: json['smallThumbnail'] as String?,
//         thumbnail: json['thumbnail'] as String?,
//       );

//   String? smallThumbnail;
//   String? thumbnail;

//   @override
//   String toString() {
//     return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
//   }

//   Map<String, dynamic> toJson() => {
//         'smallThumbnail': smallThumbnail,
//         'thumbnail': thumbnail,
//       };
// }

// class IndustryIdentifier {
//   IndustryIdentifier({this.type, this.identifier});

//   factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
//     return IndustryIdentifier(
//       type: json['type'] as String?,
//       identifier: json['identifier'] as String?,
//     );
//   }

//   String? type;
//   String? identifier;

//   @override
//   String toString() {
//     return 'IndustryIdentifier(type: $type, identifier: $identifier)';
//   }

//   Map<String, dynamic> toJson() => {
//         'type': type,
//         'identifier': identifier,
//       };
// }

// class ReadingModes {
//   ReadingModes({this.text, this.image});

//   factory ReadingModes.fromJson(Map<String, dynamic> json) => ReadingModes(
//         text: json['text'] as bool?,
//         image: json['image'] as bool?,
//       );

//   bool? text;
//   bool? image;

//   @override
//   String toString() => 'ReadingModes(text: $text, image: $image)';

//   Map<String, dynamic> toJson() => {
//         'text': text,
//         'image': image,
//       };
// }
