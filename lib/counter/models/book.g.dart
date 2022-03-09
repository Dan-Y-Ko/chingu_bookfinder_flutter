// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
      kind: json['kind'] as String?,
      id: json['id'] as String?,
      etag: json['etag'] as String?,
      selfLink: json['selfLink'] as String?,
      volumeInfo: json['volumeInfo'] == null
          ? null
          : VolumeInfo.fromJson(json['volumeInfo'] as Map<String, dynamic>),
      saleInfo: json['saleInfo'] == null
          ? null
          : SaleInfo.fromJson(json['saleInfo'] as Map<String, dynamic>),
      accessInfo: json['accessInfo'] == null
          ? null
          : AccessInfo.fromJson(json['accessInfo'] as Map<String, dynamic>),
      searchInfo: json['searchInfo'] == null
          ? null
          : SearchInfo.fromJson(json['searchInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'kind': instance.kind,
      'id': instance.id,
      'etag': instance.etag,
      'selfLink': instance.selfLink,
      'volumeInfo': instance.volumeInfo,
      'saleInfo': instance.saleInfo,
      'accessInfo': instance.accessInfo,
      'searchInfo': instance.searchInfo,
    };

_$_AccessInfo _$$_AccessInfoFromJson(Map<String, dynamic> json) =>
    _$_AccessInfo(
      country: json['country'] as String?,
      viewability: json['viewability'] as String?,
      embeddable: json['embeddable'] as bool?,
      publicDomain: json['publicDomain'] as bool?,
      textToSpeechPermission: json['textToSpeechPermission'] as String?,
      epub: json['epub'] == null
          ? null
          : Epub.fromJson(json['epub'] as Map<String, dynamic>),
      pdf: json['pdf'] == null
          ? null
          : Pdf.fromJson(json['pdf'] as Map<String, dynamic>),
      webReaderLink: json['webReaderLink'] as String?,
      accessViewStatus: json['accessViewStatus'] as String?,
      quoteSharingAllowed: json['quoteSharingAllowed'] as bool?,
    );

Map<String, dynamic> _$$_AccessInfoToJson(_$_AccessInfo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'viewability': instance.viewability,
      'embeddable': instance.embeddable,
      'publicDomain': instance.publicDomain,
      'textToSpeechPermission': instance.textToSpeechPermission,
      'epub': instance.epub,
      'pdf': instance.pdf,
      'webReaderLink': instance.webReaderLink,
      'accessViewStatus': instance.accessViewStatus,
      'quoteSharingAllowed': instance.quoteSharingAllowed,
    };

_$_Pdf _$$_PdfFromJson(Map<String, dynamic> json) => _$_Pdf(
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$$_PdfToJson(_$_Pdf instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
    };

_$_Epub _$$_EpubFromJson(Map<String, dynamic> json) => _$_Epub(
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$$_EpubToJson(_$_Epub instance) => <String, dynamic>{
      'isAvailable': instance.isAvailable,
    };

_$_SaleInfo _$$_SaleInfoFromJson(Map<String, dynamic> json) => _$_SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
    );

Map<String, dynamic> _$$_SaleInfoToJson(_$_SaleInfo instance) =>
    <String, dynamic>{
      'country': instance.country,
      'saleability': instance.saleability,
      'isEbook': instance.isEbook,
    };

_$_SearchInfo _$$_SearchInfoFromJson(Map<String, dynamic> json) =>
    _$_SearchInfo(
      textSnippet: json['textSnippet'] as String?,
    );

Map<String, dynamic> _$$_SearchInfoToJson(_$_SearchInfo instance) =>
    <String, dynamic>{
      'textSnippet': instance.textSnippet,
    };

_$_VolumeInfo _$$_VolumeInfoFromJson(Map<String, dynamic> json) =>
    _$_VolumeInfo(
      title: json['title'] as String?,
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String?,
      description: json['description'] as String?,
      industryIdentifiers: (json['industryIdentifiers'] as List<dynamic>?)
          ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      readingModes: json['readingModes'] == null
          ? null
          : ReadingModes.fromJson(json['readingModes'] as Map<String, dynamic>),
      pageCount: json['pageCount'] as int?,
      printType: json['printType'] as String?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      ratingsCount: json['ratingsCount'] as int?,
      maturityRating: json['maturityRating'] as String?,
      allowAnonLogging: json['allowAnonLogging'] as bool?,
      contentVersion: json['contentVersion'] as String?,
      imageLinks: json['imageLinks'] == null
          ? null
          : ImageLinks.fromJson(json['imageLinks'] as Map<String, dynamic>),
      language: json['language'] as String?,
      previewLink: json['previewLink'] as String?,
      infoLink: json['infoLink'] as String?,
      canonicalVolumeLink: json['canonicalVolumeLink'] as String?,
    );

Map<String, dynamic> _$$_VolumeInfoToJson(_$_VolumeInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'description': instance.description,
      'industryIdentifiers': instance.industryIdentifiers,
      'readingModes': instance.readingModes,
      'pageCount': instance.pageCount,
      'printType': instance.printType,
      'categories': instance.categories,
      'averageRating': instance.averageRating,
      'ratingsCount': instance.ratingsCount,
      'maturityRating': instance.maturityRating,
      'allowAnonLogging': instance.allowAnonLogging,
      'contentVersion': instance.contentVersion,
      'imageLinks': instance.imageLinks,
      'language': instance.language,
      'previewLink': instance.previewLink,
      'infoLink': instance.infoLink,
      'canonicalVolumeLink': instance.canonicalVolumeLink,
    };

_$_ImageLinks _$$_ImageLinksFromJson(Map<String, dynamic> json) =>
    _$_ImageLinks(
      smallThumbnail: json['smallThumbnail'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_ImageLinksToJson(_$_ImageLinks instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };

_$_IndustryIdentifier _$$_IndustryIdentifierFromJson(
        Map<String, dynamic> json) =>
    _$_IndustryIdentifier(
      type: json['type'] as String?,
      identifier: json['identifier'] as String?,
    );

Map<String, dynamic> _$$_IndustryIdentifierToJson(
        _$_IndustryIdentifier instance) =>
    <String, dynamic>{
      'type': instance.type,
      'identifier': instance.identifier,
    };

_$_ReadingModes _$$_ReadingModesFromJson(Map<String, dynamic> json) =>
    _$_ReadingModes(
      text: json['text'] as bool?,
      image: json['image'] as bool?,
    );

Map<String, dynamic> _$$_ReadingModesToJson(_$_ReadingModes instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
    };
