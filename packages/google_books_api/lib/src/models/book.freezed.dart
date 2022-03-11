// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Book _$BookFromJson(Map<String, dynamic> json) {
  return _Book.fromJson(json);
}

/// @nodoc
class _$BookTearOff {
  const _$BookTearOff();

  _Book call(
      {String? kind,
      String? id,
      String? etag,
      String? selfLink,
      VolumeInfo? volumeInfo,
      SaleInfo? saleInfo,
      AccessInfo? accessInfo,
      SearchInfo? searchInfo}) {
    return _Book(
      kind: kind,
      id: id,
      etag: etag,
      selfLink: selfLink,
      volumeInfo: volumeInfo,
      saleInfo: saleInfo,
      accessInfo: accessInfo,
      searchInfo: searchInfo,
    );
  }

  Book fromJson(Map<String, Object?> json) {
    return Book.fromJson(json);
  }
}

/// @nodoc
const $Book = _$BookTearOff();

/// @nodoc
mixin _$Book {
  String? get kind => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get etag => throw _privateConstructorUsedError;
  String? get selfLink => throw _privateConstructorUsedError;
  VolumeInfo? get volumeInfo => throw _privateConstructorUsedError;
  SaleInfo? get saleInfo => throw _privateConstructorUsedError;
  AccessInfo? get accessInfo => throw _privateConstructorUsedError;
  SearchInfo? get searchInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookCopyWith<Book> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookCopyWith<$Res> {
  factory $BookCopyWith(Book value, $Res Function(Book) then) =
      _$BookCopyWithImpl<$Res>;
  $Res call(
      {String? kind,
      String? id,
      String? etag,
      String? selfLink,
      VolumeInfo? volumeInfo,
      SaleInfo? saleInfo,
      AccessInfo? accessInfo,
      SearchInfo? searchInfo});

  $VolumeInfoCopyWith<$Res>? get volumeInfo;
  $SaleInfoCopyWith<$Res>? get saleInfo;
  $AccessInfoCopyWith<$Res>? get accessInfo;
  $SearchInfoCopyWith<$Res>? get searchInfo;
}

/// @nodoc
class _$BookCopyWithImpl<$Res> implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._value, this._then);

  final Book _value;
  // ignore: unused_field
  final $Res Function(Book) _then;

  @override
  $Res call({
    Object? kind = freezed,
    Object? id = freezed,
    Object? etag = freezed,
    Object? selfLink = freezed,
    Object? volumeInfo = freezed,
    Object? saleInfo = freezed,
    Object? accessInfo = freezed,
    Object? searchInfo = freezed,
  }) {
    return _then(_value.copyWith(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLink: selfLink == freezed
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo?,
      saleInfo: saleInfo == freezed
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as SaleInfo?,
      accessInfo: accessInfo == freezed
          ? _value.accessInfo
          : accessInfo // ignore: cast_nullable_to_non_nullable
              as AccessInfo?,
      searchInfo: searchInfo == freezed
          ? _value.searchInfo
          : searchInfo // ignore: cast_nullable_to_non_nullable
              as SearchInfo?,
    ));
  }

  @override
  $VolumeInfoCopyWith<$Res>? get volumeInfo {
    if (_value.volumeInfo == null) {
      return null;
    }

    return $VolumeInfoCopyWith<$Res>(_value.volumeInfo!, (value) {
      return _then(_value.copyWith(volumeInfo: value));
    });
  }

  @override
  $SaleInfoCopyWith<$Res>? get saleInfo {
    if (_value.saleInfo == null) {
      return null;
    }

    return $SaleInfoCopyWith<$Res>(_value.saleInfo!, (value) {
      return _then(_value.copyWith(saleInfo: value));
    });
  }

  @override
  $AccessInfoCopyWith<$Res>? get accessInfo {
    if (_value.accessInfo == null) {
      return null;
    }

    return $AccessInfoCopyWith<$Res>(_value.accessInfo!, (value) {
      return _then(_value.copyWith(accessInfo: value));
    });
  }

  @override
  $SearchInfoCopyWith<$Res>? get searchInfo {
    if (_value.searchInfo == null) {
      return null;
    }

    return $SearchInfoCopyWith<$Res>(_value.searchInfo!, (value) {
      return _then(_value.copyWith(searchInfo: value));
    });
  }
}

/// @nodoc
abstract class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) then) =
      __$BookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? kind,
      String? id,
      String? etag,
      String? selfLink,
      VolumeInfo? volumeInfo,
      SaleInfo? saleInfo,
      AccessInfo? accessInfo,
      SearchInfo? searchInfo});

  @override
  $VolumeInfoCopyWith<$Res>? get volumeInfo;
  @override
  $SaleInfoCopyWith<$Res>? get saleInfo;
  @override
  $AccessInfoCopyWith<$Res>? get accessInfo;
  @override
  $SearchInfoCopyWith<$Res>? get searchInfo;
}

/// @nodoc
class __$BookCopyWithImpl<$Res> extends _$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(_Book _value, $Res Function(_Book) _then)
      : super(_value, (v) => _then(v as _Book));

  @override
  _Book get _value => super._value as _Book;

  @override
  $Res call({
    Object? kind = freezed,
    Object? id = freezed,
    Object? etag = freezed,
    Object? selfLink = freezed,
    Object? volumeInfo = freezed,
    Object? saleInfo = freezed,
    Object? accessInfo = freezed,
    Object? searchInfo = freezed,
  }) {
    return _then(_Book(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      etag: etag == freezed
          ? _value.etag
          : etag // ignore: cast_nullable_to_non_nullable
              as String?,
      selfLink: selfLink == freezed
          ? _value.selfLink
          : selfLink // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeInfo: volumeInfo == freezed
          ? _value.volumeInfo
          : volumeInfo // ignore: cast_nullable_to_non_nullable
              as VolumeInfo?,
      saleInfo: saleInfo == freezed
          ? _value.saleInfo
          : saleInfo // ignore: cast_nullable_to_non_nullable
              as SaleInfo?,
      accessInfo: accessInfo == freezed
          ? _value.accessInfo
          : accessInfo // ignore: cast_nullable_to_non_nullable
              as AccessInfo?,
      searchInfo: searchInfo == freezed
          ? _value.searchInfo
          : searchInfo // ignore: cast_nullable_to_non_nullable
              as SearchInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Book implements _Book {
  _$_Book(
      {this.kind,
      this.id,
      this.etag,
      this.selfLink,
      this.volumeInfo,
      this.saleInfo,
      this.accessInfo,
      this.searchInfo});

  factory _$_Book.fromJson(Map<String, dynamic> json) => _$$_BookFromJson(json);

  @override
  final String? kind;
  @override
  final String? id;
  @override
  final String? etag;
  @override
  final String? selfLink;
  @override
  final VolumeInfo? volumeInfo;
  @override
  final SaleInfo? saleInfo;
  @override
  final AccessInfo? accessInfo;
  @override
  final SearchInfo? searchInfo;

  @override
  String toString() {
    return 'Book(kind: $kind, id: $id, etag: $etag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo, searchInfo: $searchInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Book &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.etag, etag) &&
            const DeepCollectionEquality().equals(other.selfLink, selfLink) &&
            const DeepCollectionEquality()
                .equals(other.volumeInfo, volumeInfo) &&
            const DeepCollectionEquality().equals(other.saleInfo, saleInfo) &&
            const DeepCollectionEquality()
                .equals(other.accessInfo, accessInfo) &&
            const DeepCollectionEquality()
                .equals(other.searchInfo, searchInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(etag),
      const DeepCollectionEquality().hash(selfLink),
      const DeepCollectionEquality().hash(volumeInfo),
      const DeepCollectionEquality().hash(saleInfo),
      const DeepCollectionEquality().hash(accessInfo),
      const DeepCollectionEquality().hash(searchInfo));

  @JsonKey(ignore: true)
  @override
  _$BookCopyWith<_Book> get copyWith =>
      __$BookCopyWithImpl<_Book>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookToJson(this);
  }
}

abstract class _Book implements Book {
  factory _Book(
      {String? kind,
      String? id,
      String? etag,
      String? selfLink,
      VolumeInfo? volumeInfo,
      SaleInfo? saleInfo,
      AccessInfo? accessInfo,
      SearchInfo? searchInfo}) = _$_Book;

  factory _Book.fromJson(Map<String, dynamic> json) = _$_Book.fromJson;

  @override
  String? get kind;
  @override
  String? get id;
  @override
  String? get etag;
  @override
  String? get selfLink;
  @override
  VolumeInfo? get volumeInfo;
  @override
  SaleInfo? get saleInfo;
  @override
  AccessInfo? get accessInfo;
  @override
  SearchInfo? get searchInfo;
  @override
  @JsonKey(ignore: true)
  _$BookCopyWith<_Book> get copyWith => throw _privateConstructorUsedError;
}

AccessInfo _$AccessInfoFromJson(Map<String, dynamic> json) {
  return _AccessInfo.fromJson(json);
}

/// @nodoc
class _$AccessInfoTearOff {
  const _$AccessInfoTearOff();

  _AccessInfo call(
      {String? country,
      String? viewability,
      bool? embeddable,
      bool? publicDomain,
      String? textToSpeechPermission,
      Epub? epub,
      Pdf? pdf,
      String? webReaderLink,
      String? accessViewStatus,
      bool? quoteSharingAllowed}) {
    return _AccessInfo(
      country: country,
      viewability: viewability,
      embeddable: embeddable,
      publicDomain: publicDomain,
      textToSpeechPermission: textToSpeechPermission,
      epub: epub,
      pdf: pdf,
      webReaderLink: webReaderLink,
      accessViewStatus: accessViewStatus,
      quoteSharingAllowed: quoteSharingAllowed,
    );
  }

  AccessInfo fromJson(Map<String, Object?> json) {
    return AccessInfo.fromJson(json);
  }
}

/// @nodoc
const $AccessInfo = _$AccessInfoTearOff();

/// @nodoc
mixin _$AccessInfo {
  String? get country => throw _privateConstructorUsedError;
  String? get viewability => throw _privateConstructorUsedError;
  bool? get embeddable => throw _privateConstructorUsedError;
  bool? get publicDomain => throw _privateConstructorUsedError;
  String? get textToSpeechPermission => throw _privateConstructorUsedError;
  Epub? get epub => throw _privateConstructorUsedError;
  Pdf? get pdf => throw _privateConstructorUsedError;
  String? get webReaderLink => throw _privateConstructorUsedError;
  String? get accessViewStatus => throw _privateConstructorUsedError;
  bool? get quoteSharingAllowed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessInfoCopyWith<AccessInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessInfoCopyWith<$Res> {
  factory $AccessInfoCopyWith(
          AccessInfo value, $Res Function(AccessInfo) then) =
      _$AccessInfoCopyWithImpl<$Res>;
  $Res call(
      {String? country,
      String? viewability,
      bool? embeddable,
      bool? publicDomain,
      String? textToSpeechPermission,
      Epub? epub,
      Pdf? pdf,
      String? webReaderLink,
      String? accessViewStatus,
      bool? quoteSharingAllowed});

  $EpubCopyWith<$Res>? get epub;
  $PdfCopyWith<$Res>? get pdf;
}

/// @nodoc
class _$AccessInfoCopyWithImpl<$Res> implements $AccessInfoCopyWith<$Res> {
  _$AccessInfoCopyWithImpl(this._value, this._then);

  final AccessInfo _value;
  // ignore: unused_field
  final $Res Function(AccessInfo) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? viewability = freezed,
    Object? embeddable = freezed,
    Object? publicDomain = freezed,
    Object? textToSpeechPermission = freezed,
    Object? epub = freezed,
    Object? pdf = freezed,
    Object? webReaderLink = freezed,
    Object? accessViewStatus = freezed,
    Object? quoteSharingAllowed = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      viewability: viewability == freezed
          ? _value.viewability
          : viewability // ignore: cast_nullable_to_non_nullable
              as String?,
      embeddable: embeddable == freezed
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicDomain: publicDomain == freezed
          ? _value.publicDomain
          : publicDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      textToSpeechPermission: textToSpeechPermission == freezed
          ? _value.textToSpeechPermission
          : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
              as String?,
      epub: epub == freezed
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as Epub?,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Pdf?,
      webReaderLink: webReaderLink == freezed
          ? _value.webReaderLink
          : webReaderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accessViewStatus: accessViewStatus == freezed
          ? _value.accessViewStatus
          : accessViewStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteSharingAllowed: quoteSharingAllowed == freezed
          ? _value.quoteSharingAllowed
          : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $EpubCopyWith<$Res>? get epub {
    if (_value.epub == null) {
      return null;
    }

    return $EpubCopyWith<$Res>(_value.epub!, (value) {
      return _then(_value.copyWith(epub: value));
    });
  }

  @override
  $PdfCopyWith<$Res>? get pdf {
    if (_value.pdf == null) {
      return null;
    }

    return $PdfCopyWith<$Res>(_value.pdf!, (value) {
      return _then(_value.copyWith(pdf: value));
    });
  }
}

/// @nodoc
abstract class _$AccessInfoCopyWith<$Res> implements $AccessInfoCopyWith<$Res> {
  factory _$AccessInfoCopyWith(
          _AccessInfo value, $Res Function(_AccessInfo) then) =
      __$AccessInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? country,
      String? viewability,
      bool? embeddable,
      bool? publicDomain,
      String? textToSpeechPermission,
      Epub? epub,
      Pdf? pdf,
      String? webReaderLink,
      String? accessViewStatus,
      bool? quoteSharingAllowed});

  @override
  $EpubCopyWith<$Res>? get epub;
  @override
  $PdfCopyWith<$Res>? get pdf;
}

/// @nodoc
class __$AccessInfoCopyWithImpl<$Res> extends _$AccessInfoCopyWithImpl<$Res>
    implements _$AccessInfoCopyWith<$Res> {
  __$AccessInfoCopyWithImpl(
      _AccessInfo _value, $Res Function(_AccessInfo) _then)
      : super(_value, (v) => _then(v as _AccessInfo));

  @override
  _AccessInfo get _value => super._value as _AccessInfo;

  @override
  $Res call({
    Object? country = freezed,
    Object? viewability = freezed,
    Object? embeddable = freezed,
    Object? publicDomain = freezed,
    Object? textToSpeechPermission = freezed,
    Object? epub = freezed,
    Object? pdf = freezed,
    Object? webReaderLink = freezed,
    Object? accessViewStatus = freezed,
    Object? quoteSharingAllowed = freezed,
  }) {
    return _then(_AccessInfo(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      viewability: viewability == freezed
          ? _value.viewability
          : viewability // ignore: cast_nullable_to_non_nullable
              as String?,
      embeddable: embeddable == freezed
          ? _value.embeddable
          : embeddable // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicDomain: publicDomain == freezed
          ? _value.publicDomain
          : publicDomain // ignore: cast_nullable_to_non_nullable
              as bool?,
      textToSpeechPermission: textToSpeechPermission == freezed
          ? _value.textToSpeechPermission
          : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
              as String?,
      epub: epub == freezed
          ? _value.epub
          : epub // ignore: cast_nullable_to_non_nullable
              as Epub?,
      pdf: pdf == freezed
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as Pdf?,
      webReaderLink: webReaderLink == freezed
          ? _value.webReaderLink
          : webReaderLink // ignore: cast_nullable_to_non_nullable
              as String?,
      accessViewStatus: accessViewStatus == freezed
          ? _value.accessViewStatus
          : accessViewStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteSharingAllowed: quoteSharingAllowed == freezed
          ? _value.quoteSharingAllowed
          : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessInfo implements _AccessInfo {
  _$_AccessInfo(
      {this.country,
      this.viewability,
      this.embeddable,
      this.publicDomain,
      this.textToSpeechPermission,
      this.epub,
      this.pdf,
      this.webReaderLink,
      this.accessViewStatus,
      this.quoteSharingAllowed});

  factory _$_AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AccessInfoFromJson(json);

  @override
  final String? country;
  @override
  final String? viewability;
  @override
  final bool? embeddable;
  @override
  final bool? publicDomain;
  @override
  final String? textToSpeechPermission;
  @override
  final Epub? epub;
  @override
  final Pdf? pdf;
  @override
  final String? webReaderLink;
  @override
  final String? accessViewStatus;
  @override
  final bool? quoteSharingAllowed;

  @override
  String toString() {
    return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, epub: $epub, pdf: $pdf, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccessInfo &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.viewability, viewability) &&
            const DeepCollectionEquality()
                .equals(other.embeddable, embeddable) &&
            const DeepCollectionEquality()
                .equals(other.publicDomain, publicDomain) &&
            const DeepCollectionEquality()
                .equals(other.textToSpeechPermission, textToSpeechPermission) &&
            const DeepCollectionEquality().equals(other.epub, epub) &&
            const DeepCollectionEquality().equals(other.pdf, pdf) &&
            const DeepCollectionEquality()
                .equals(other.webReaderLink, webReaderLink) &&
            const DeepCollectionEquality()
                .equals(other.accessViewStatus, accessViewStatus) &&
            const DeepCollectionEquality()
                .equals(other.quoteSharingAllowed, quoteSharingAllowed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(viewability),
      const DeepCollectionEquality().hash(embeddable),
      const DeepCollectionEquality().hash(publicDomain),
      const DeepCollectionEquality().hash(textToSpeechPermission),
      const DeepCollectionEquality().hash(epub),
      const DeepCollectionEquality().hash(pdf),
      const DeepCollectionEquality().hash(webReaderLink),
      const DeepCollectionEquality().hash(accessViewStatus),
      const DeepCollectionEquality().hash(quoteSharingAllowed));

  @JsonKey(ignore: true)
  @override
  _$AccessInfoCopyWith<_AccessInfo> get copyWith =>
      __$AccessInfoCopyWithImpl<_AccessInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessInfoToJson(this);
  }
}

abstract class _AccessInfo implements AccessInfo {
  factory _AccessInfo(
      {String? country,
      String? viewability,
      bool? embeddable,
      bool? publicDomain,
      String? textToSpeechPermission,
      Epub? epub,
      Pdf? pdf,
      String? webReaderLink,
      String? accessViewStatus,
      bool? quoteSharingAllowed}) = _$_AccessInfo;

  factory _AccessInfo.fromJson(Map<String, dynamic> json) =
      _$_AccessInfo.fromJson;

  @override
  String? get country;
  @override
  String? get viewability;
  @override
  bool? get embeddable;
  @override
  bool? get publicDomain;
  @override
  String? get textToSpeechPermission;
  @override
  Epub? get epub;
  @override
  Pdf? get pdf;
  @override
  String? get webReaderLink;
  @override
  String? get accessViewStatus;
  @override
  bool? get quoteSharingAllowed;
  @override
  @JsonKey(ignore: true)
  _$AccessInfoCopyWith<_AccessInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Pdf _$PdfFromJson(Map<String, dynamic> json) {
  return _Pdf.fromJson(json);
}

/// @nodoc
class _$PdfTearOff {
  const _$PdfTearOff();

  _Pdf call({bool? isAvailable}) {
    return _Pdf(
      isAvailable: isAvailable,
    );
  }

  Pdf fromJson(Map<String, Object?> json) {
    return Pdf.fromJson(json);
  }
}

/// @nodoc
const $Pdf = _$PdfTearOff();

/// @nodoc
mixin _$Pdf {
  bool? get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PdfCopyWith<Pdf> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfCopyWith<$Res> {
  factory $PdfCopyWith(Pdf value, $Res Function(Pdf) then) =
      _$PdfCopyWithImpl<$Res>;
  $Res call({bool? isAvailable});
}

/// @nodoc
class _$PdfCopyWithImpl<$Res> implements $PdfCopyWith<$Res> {
  _$PdfCopyWithImpl(this._value, this._then);

  final Pdf _value;
  // ignore: unused_field
  final $Res Function(Pdf) _then;

  @override
  $Res call({
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PdfCopyWith<$Res> implements $PdfCopyWith<$Res> {
  factory _$PdfCopyWith(_Pdf value, $Res Function(_Pdf) then) =
      __$PdfCopyWithImpl<$Res>;
  @override
  $Res call({bool? isAvailable});
}

/// @nodoc
class __$PdfCopyWithImpl<$Res> extends _$PdfCopyWithImpl<$Res>
    implements _$PdfCopyWith<$Res> {
  __$PdfCopyWithImpl(_Pdf _value, $Res Function(_Pdf) _then)
      : super(_value, (v) => _then(v as _Pdf));

  @override
  _Pdf get _value => super._value as _Pdf;

  @override
  $Res call({
    Object? isAvailable = freezed,
  }) {
    return _then(_Pdf(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pdf implements _Pdf {
  _$_Pdf({this.isAvailable});

  factory _$_Pdf.fromJson(Map<String, dynamic> json) => _$$_PdfFromJson(json);

  @override
  final bool? isAvailable;

  @override
  String toString() {
    return 'Pdf(isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Pdf &&
            const DeepCollectionEquality()
                .equals(other.isAvailable, isAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isAvailable));

  @JsonKey(ignore: true)
  @override
  _$PdfCopyWith<_Pdf> get copyWith =>
      __$PdfCopyWithImpl<_Pdf>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PdfToJson(this);
  }
}

abstract class _Pdf implements Pdf {
  factory _Pdf({bool? isAvailable}) = _$_Pdf;

  factory _Pdf.fromJson(Map<String, dynamic> json) = _$_Pdf.fromJson;

  @override
  bool? get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$PdfCopyWith<_Pdf> get copyWith => throw _privateConstructorUsedError;
}

Epub _$EpubFromJson(Map<String, dynamic> json) {
  return _Epub.fromJson(json);
}

/// @nodoc
class _$EpubTearOff {
  const _$EpubTearOff();

  _Epub call({bool? isAvailable}) {
    return _Epub(
      isAvailable: isAvailable,
    );
  }

  Epub fromJson(Map<String, Object?> json) {
    return Epub.fromJson(json);
  }
}

/// @nodoc
const $Epub = _$EpubTearOff();

/// @nodoc
mixin _$Epub {
  bool? get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpubCopyWith<Epub> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpubCopyWith<$Res> {
  factory $EpubCopyWith(Epub value, $Res Function(Epub) then) =
      _$EpubCopyWithImpl<$Res>;
  $Res call({bool? isAvailable});
}

/// @nodoc
class _$EpubCopyWithImpl<$Res> implements $EpubCopyWith<$Res> {
  _$EpubCopyWithImpl(this._value, this._then);

  final Epub _value;
  // ignore: unused_field
  final $Res Function(Epub) _then;

  @override
  $Res call({
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$EpubCopyWith<$Res> implements $EpubCopyWith<$Res> {
  factory _$EpubCopyWith(_Epub value, $Res Function(_Epub) then) =
      __$EpubCopyWithImpl<$Res>;
  @override
  $Res call({bool? isAvailable});
}

/// @nodoc
class __$EpubCopyWithImpl<$Res> extends _$EpubCopyWithImpl<$Res>
    implements _$EpubCopyWith<$Res> {
  __$EpubCopyWithImpl(_Epub _value, $Res Function(_Epub) _then)
      : super(_value, (v) => _then(v as _Epub));

  @override
  _Epub get _value => super._value as _Epub;

  @override
  $Res call({
    Object? isAvailable = freezed,
  }) {
    return _then(_Epub(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Epub implements _Epub {
  _$_Epub({this.isAvailable});

  factory _$_Epub.fromJson(Map<String, dynamic> json) => _$$_EpubFromJson(json);

  @override
  final bool? isAvailable;

  @override
  String toString() {
    return 'Epub(isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Epub &&
            const DeepCollectionEquality()
                .equals(other.isAvailable, isAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isAvailable));

  @JsonKey(ignore: true)
  @override
  _$EpubCopyWith<_Epub> get copyWith =>
      __$EpubCopyWithImpl<_Epub>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EpubToJson(this);
  }
}

abstract class _Epub implements Epub {
  factory _Epub({bool? isAvailable}) = _$_Epub;

  factory _Epub.fromJson(Map<String, dynamic> json) = _$_Epub.fromJson;

  @override
  bool? get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$EpubCopyWith<_Epub> get copyWith => throw _privateConstructorUsedError;
}

SaleInfo _$SaleInfoFromJson(Map<String, dynamic> json) {
  return _SaleInfo.fromJson(json);
}

/// @nodoc
class _$SaleInfoTearOff {
  const _$SaleInfoTearOff();

  _SaleInfo call({String? country, String? saleability, bool? isEbook}) {
    return _SaleInfo(
      country: country,
      saleability: saleability,
      isEbook: isEbook,
    );
  }

  SaleInfo fromJson(Map<String, Object?> json) {
    return SaleInfo.fromJson(json);
  }
}

/// @nodoc
const $SaleInfo = _$SaleInfoTearOff();

/// @nodoc
mixin _$SaleInfo {
  String? get country => throw _privateConstructorUsedError;
  String? get saleability => throw _privateConstructorUsedError;
  bool? get isEbook => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaleInfoCopyWith<SaleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaleInfoCopyWith<$Res> {
  factory $SaleInfoCopyWith(SaleInfo value, $Res Function(SaleInfo) then) =
      _$SaleInfoCopyWithImpl<$Res>;
  $Res call({String? country, String? saleability, bool? isEbook});
}

/// @nodoc
class _$SaleInfoCopyWithImpl<$Res> implements $SaleInfoCopyWith<$Res> {
  _$SaleInfoCopyWithImpl(this._value, this._then);

  final SaleInfo _value;
  // ignore: unused_field
  final $Res Function(SaleInfo) _then;

  @override
  $Res call({
    Object? country = freezed,
    Object? saleability = freezed,
    Object? isEbook = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      saleability: saleability == freezed
          ? _value.saleability
          : saleability // ignore: cast_nullable_to_non_nullable
              as String?,
      isEbook: isEbook == freezed
          ? _value.isEbook
          : isEbook // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SaleInfoCopyWith<$Res> implements $SaleInfoCopyWith<$Res> {
  factory _$SaleInfoCopyWith(_SaleInfo value, $Res Function(_SaleInfo) then) =
      __$SaleInfoCopyWithImpl<$Res>;
  @override
  $Res call({String? country, String? saleability, bool? isEbook});
}

/// @nodoc
class __$SaleInfoCopyWithImpl<$Res> extends _$SaleInfoCopyWithImpl<$Res>
    implements _$SaleInfoCopyWith<$Res> {
  __$SaleInfoCopyWithImpl(_SaleInfo _value, $Res Function(_SaleInfo) _then)
      : super(_value, (v) => _then(v as _SaleInfo));

  @override
  _SaleInfo get _value => super._value as _SaleInfo;

  @override
  $Res call({
    Object? country = freezed,
    Object? saleability = freezed,
    Object? isEbook = freezed,
  }) {
    return _then(_SaleInfo(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      saleability: saleability == freezed
          ? _value.saleability
          : saleability // ignore: cast_nullable_to_non_nullable
              as String?,
      isEbook: isEbook == freezed
          ? _value.isEbook
          : isEbook // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SaleInfo implements _SaleInfo {
  _$_SaleInfo({this.country, this.saleability, this.isEbook});

  factory _$_SaleInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SaleInfoFromJson(json);

  @override
  final String? country;
  @override
  final String? saleability;
  @override
  final bool? isEbook;

  @override
  String toString() {
    return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaleInfo &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.saleability, saleability) &&
            const DeepCollectionEquality().equals(other.isEbook, isEbook));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(saleability),
      const DeepCollectionEquality().hash(isEbook));

  @JsonKey(ignore: true)
  @override
  _$SaleInfoCopyWith<_SaleInfo> get copyWith =>
      __$SaleInfoCopyWithImpl<_SaleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaleInfoToJson(this);
  }
}

abstract class _SaleInfo implements SaleInfo {
  factory _SaleInfo({String? country, String? saleability, bool? isEbook}) =
      _$_SaleInfo;

  factory _SaleInfo.fromJson(Map<String, dynamic> json) = _$_SaleInfo.fromJson;

  @override
  String? get country;
  @override
  String? get saleability;
  @override
  bool? get isEbook;
  @override
  @JsonKey(ignore: true)
  _$SaleInfoCopyWith<_SaleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchInfo _$SearchInfoFromJson(Map<String, dynamic> json) {
  return _SearchInfo.fromJson(json);
}

/// @nodoc
class _$SearchInfoTearOff {
  const _$SearchInfoTearOff();

  _SearchInfo call({String? textSnippet}) {
    return _SearchInfo(
      textSnippet: textSnippet,
    );
  }

  SearchInfo fromJson(Map<String, Object?> json) {
    return SearchInfo.fromJson(json);
  }
}

/// @nodoc
const $SearchInfo = _$SearchInfoTearOff();

/// @nodoc
mixin _$SearchInfo {
  String? get textSnippet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchInfoCopyWith<SearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchInfoCopyWith<$Res> {
  factory $SearchInfoCopyWith(
          SearchInfo value, $Res Function(SearchInfo) then) =
      _$SearchInfoCopyWithImpl<$Res>;
  $Res call({String? textSnippet});
}

/// @nodoc
class _$SearchInfoCopyWithImpl<$Res> implements $SearchInfoCopyWith<$Res> {
  _$SearchInfoCopyWithImpl(this._value, this._then);

  final SearchInfo _value;
  // ignore: unused_field
  final $Res Function(SearchInfo) _then;

  @override
  $Res call({
    Object? textSnippet = freezed,
  }) {
    return _then(_value.copyWith(
      textSnippet: textSnippet == freezed
          ? _value.textSnippet
          : textSnippet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchInfoCopyWith<$Res> implements $SearchInfoCopyWith<$Res> {
  factory _$SearchInfoCopyWith(
          _SearchInfo value, $Res Function(_SearchInfo) then) =
      __$SearchInfoCopyWithImpl<$Res>;
  @override
  $Res call({String? textSnippet});
}

/// @nodoc
class __$SearchInfoCopyWithImpl<$Res> extends _$SearchInfoCopyWithImpl<$Res>
    implements _$SearchInfoCopyWith<$Res> {
  __$SearchInfoCopyWithImpl(
      _SearchInfo _value, $Res Function(_SearchInfo) _then)
      : super(_value, (v) => _then(v as _SearchInfo));

  @override
  _SearchInfo get _value => super._value as _SearchInfo;

  @override
  $Res call({
    Object? textSnippet = freezed,
  }) {
    return _then(_SearchInfo(
      textSnippet: textSnippet == freezed
          ? _value.textSnippet
          : textSnippet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchInfo implements _SearchInfo {
  _$_SearchInfo({this.textSnippet});

  factory _$_SearchInfo.fromJson(Map<String, dynamic> json) =>
      _$$_SearchInfoFromJson(json);

  @override
  final String? textSnippet;

  @override
  String toString() {
    return 'SearchInfo(textSnippet: $textSnippet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchInfo &&
            const DeepCollectionEquality()
                .equals(other.textSnippet, textSnippet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(textSnippet));

  @JsonKey(ignore: true)
  @override
  _$SearchInfoCopyWith<_SearchInfo> get copyWith =>
      __$SearchInfoCopyWithImpl<_SearchInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchInfoToJson(this);
  }
}

abstract class _SearchInfo implements SearchInfo {
  factory _SearchInfo({String? textSnippet}) = _$_SearchInfo;

  factory _SearchInfo.fromJson(Map<String, dynamic> json) =
      _$_SearchInfo.fromJson;

  @override
  String? get textSnippet;
  @override
  @JsonKey(ignore: true)
  _$SearchInfoCopyWith<_SearchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

VolumeInfo _$VolumeInfoFromJson(Map<String, dynamic> json) {
  return _VolumeInfo.fromJson(json);
}

/// @nodoc
class _$VolumeInfoTearOff {
  const _$VolumeInfoTearOff();

  _VolumeInfo call(
      {String? title,
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
      String? canonicalVolumeLink}) {
    return _VolumeInfo(
      title: title,
      authors: authors,
      publisher: publisher,
      publishedDate: publishedDate,
      description: description,
      industryIdentifiers: industryIdentifiers,
      readingModes: readingModes,
      pageCount: pageCount,
      printType: printType,
      categories: categories,
      averageRating: averageRating,
      ratingsCount: ratingsCount,
      maturityRating: maturityRating,
      allowAnonLogging: allowAnonLogging,
      contentVersion: contentVersion,
      imageLinks: imageLinks,
      language: language,
      previewLink: previewLink,
      infoLink: infoLink,
      canonicalVolumeLink: canonicalVolumeLink,
    );
  }

  VolumeInfo fromJson(Map<String, Object?> json) {
    return VolumeInfo.fromJson(json);
  }
}

/// @nodoc
const $VolumeInfo = _$VolumeInfoTearOff();

/// @nodoc
mixin _$VolumeInfo {
  String? get title => throw _privateConstructorUsedError;
  List<String>? get authors => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  String? get publishedDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<IndustryIdentifier>? get industryIdentifiers =>
      throw _privateConstructorUsedError;
  ReadingModes? get readingModes => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  String? get printType => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  double? get averageRating => throw _privateConstructorUsedError;
  int? get ratingsCount => throw _privateConstructorUsedError;
  String? get maturityRating => throw _privateConstructorUsedError;
  bool? get allowAnonLogging => throw _privateConstructorUsedError;
  String? get contentVersion => throw _privateConstructorUsedError;
  ImageLinks? get imageLinks => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get previewLink => throw _privateConstructorUsedError;
  String? get infoLink => throw _privateConstructorUsedError;
  String? get canonicalVolumeLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VolumeInfoCopyWith<VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VolumeInfoCopyWith<$Res> {
  factory $VolumeInfoCopyWith(
          VolumeInfo value, $Res Function(VolumeInfo) then) =
      _$VolumeInfoCopyWithImpl<$Res>;
  $Res call(
      {String? title,
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
      String? canonicalVolumeLink});

  $ReadingModesCopyWith<$Res>? get readingModes;
  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class _$VolumeInfoCopyWithImpl<$Res> implements $VolumeInfoCopyWith<$Res> {
  _$VolumeInfoCopyWithImpl(this._value, this._then);

  final VolumeInfo _value;
  // ignore: unused_field
  final $Res Function(VolumeInfo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? industryIdentifiers = freezed,
    Object? readingModes = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? maturityRating = freezed,
    Object? allowAnonLogging = freezed,
    Object? contentVersion = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? previewLink = freezed,
    Object? infoLink = freezed,
    Object? canonicalVolumeLink = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      industryIdentifiers: industryIdentifiers == freezed
          ? _value.industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifier>?,
      readingModes: readingModes == freezed
          ? _value.readingModes
          : readingModes // ignore: cast_nullable_to_non_nullable
              as ReadingModes?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      printType: printType == freezed
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: ratingsCount == freezed
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maturityRating: maturityRating == freezed
          ? _value.maturityRating
          : maturityRating // ignore: cast_nullable_to_non_nullable
              as String?,
      allowAnonLogging: allowAnonLogging == freezed
          ? _value.allowAnonLogging
          : allowAnonLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentVersion: contentVersion == freezed
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      previewLink: previewLink == freezed
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String?,
      infoLink: infoLink == freezed
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalVolumeLink: canonicalVolumeLink == freezed
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ReadingModesCopyWith<$Res>? get readingModes {
    if (_value.readingModes == null) {
      return null;
    }

    return $ReadingModesCopyWith<$Res>(_value.readingModes!, (value) {
      return _then(_value.copyWith(readingModes: value));
    });
  }

  @override
  $ImageLinksCopyWith<$Res>? get imageLinks {
    if (_value.imageLinks == null) {
      return null;
    }

    return $ImageLinksCopyWith<$Res>(_value.imageLinks!, (value) {
      return _then(_value.copyWith(imageLinks: value));
    });
  }
}

/// @nodoc
abstract class _$VolumeInfoCopyWith<$Res> implements $VolumeInfoCopyWith<$Res> {
  factory _$VolumeInfoCopyWith(
          _VolumeInfo value, $Res Function(_VolumeInfo) then) =
      __$VolumeInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
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
      String? canonicalVolumeLink});

  @override
  $ReadingModesCopyWith<$Res>? get readingModes;
  @override
  $ImageLinksCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class __$VolumeInfoCopyWithImpl<$Res> extends _$VolumeInfoCopyWithImpl<$Res>
    implements _$VolumeInfoCopyWith<$Res> {
  __$VolumeInfoCopyWithImpl(
      _VolumeInfo _value, $Res Function(_VolumeInfo) _then)
      : super(_value, (v) => _then(v as _VolumeInfo));

  @override
  _VolumeInfo get _value => super._value as _VolumeInfo;

  @override
  $Res call({
    Object? title = freezed,
    Object? authors = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? description = freezed,
    Object? industryIdentifiers = freezed,
    Object? readingModes = freezed,
    Object? pageCount = freezed,
    Object? printType = freezed,
    Object? categories = freezed,
    Object? averageRating = freezed,
    Object? ratingsCount = freezed,
    Object? maturityRating = freezed,
    Object? allowAnonLogging = freezed,
    Object? contentVersion = freezed,
    Object? imageLinks = freezed,
    Object? language = freezed,
    Object? previewLink = freezed,
    Object? infoLink = freezed,
    Object? canonicalVolumeLink = freezed,
  }) {
    return _then(_VolumeInfo(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      authors: authors == freezed
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      publisher: publisher == freezed
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: publishedDate == freezed
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      industryIdentifiers: industryIdentifiers == freezed
          ? _value.industryIdentifiers
          : industryIdentifiers // ignore: cast_nullable_to_non_nullable
              as List<IndustryIdentifier>?,
      readingModes: readingModes == freezed
          ? _value.readingModes
          : readingModes // ignore: cast_nullable_to_non_nullable
              as ReadingModes?,
      pageCount: pageCount == freezed
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      printType: printType == freezed
          ? _value.printType
          : printType // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingsCount: ratingsCount == freezed
          ? _value.ratingsCount
          : ratingsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      maturityRating: maturityRating == freezed
          ? _value.maturityRating
          : maturityRating // ignore: cast_nullable_to_non_nullable
              as String?,
      allowAnonLogging: allowAnonLogging == freezed
          ? _value.allowAnonLogging
          : allowAnonLogging // ignore: cast_nullable_to_non_nullable
              as bool?,
      contentVersion: contentVersion == freezed
          ? _value.contentVersion
          : contentVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLinks: imageLinks == freezed
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as ImageLinks?,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      previewLink: previewLink == freezed
          ? _value.previewLink
          : previewLink // ignore: cast_nullable_to_non_nullable
              as String?,
      infoLink: infoLink == freezed
          ? _value.infoLink
          : infoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalVolumeLink: canonicalVolumeLink == freezed
          ? _value.canonicalVolumeLink
          : canonicalVolumeLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VolumeInfo implements _VolumeInfo {
  _$_VolumeInfo(
      {this.title,
      this.authors,
      this.publisher,
      this.publishedDate,
      this.description,
      this.industryIdentifiers,
      this.readingModes,
      this.pageCount,
      this.printType,
      this.categories,
      this.averageRating,
      this.ratingsCount,
      this.maturityRating,
      this.allowAnonLogging,
      this.contentVersion,
      this.imageLinks,
      this.language,
      this.previewLink,
      this.infoLink,
      this.canonicalVolumeLink});

  factory _$_VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$$_VolumeInfoFromJson(json);

  @override
  final String? title;
  @override
  final List<String>? authors;
  @override
  final String? publisher;
  @override
  final String? publishedDate;
  @override
  final String? description;
  @override
  final List<IndustryIdentifier>? industryIdentifiers;
  @override
  final ReadingModes? readingModes;
  @override
  final int? pageCount;
  @override
  final String? printType;
  @override
  final List<String>? categories;
  @override
  final double? averageRating;
  @override
  final int? ratingsCount;
  @override
  final String? maturityRating;
  @override
  final bool? allowAnonLogging;
  @override
  final String? contentVersion;
  @override
  final ImageLinks? imageLinks;
  @override
  final String? language;
  @override
  final String? previewLink;
  @override
  final String? infoLink;
  @override
  final String? canonicalVolumeLink;

  @override
  String toString() {
    return 'VolumeInfo(title: $title, authors: $authors, publisher: $publisher, publishedDate: $publishedDate, description: $description, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, pageCount: $pageCount, printType: $printType, categories: $categories, averageRating: $averageRating, ratingsCount: $ratingsCount, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VolumeInfo &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.authors, authors) &&
            const DeepCollectionEquality().equals(other.publisher, publisher) &&
            const DeepCollectionEquality()
                .equals(other.publishedDate, publishedDate) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.industryIdentifiers, industryIdentifiers) &&
            const DeepCollectionEquality()
                .equals(other.readingModes, readingModes) &&
            const DeepCollectionEquality().equals(other.pageCount, pageCount) &&
            const DeepCollectionEquality().equals(other.printType, printType) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.averageRating, averageRating) &&
            const DeepCollectionEquality()
                .equals(other.ratingsCount, ratingsCount) &&
            const DeepCollectionEquality()
                .equals(other.maturityRating, maturityRating) &&
            const DeepCollectionEquality()
                .equals(other.allowAnonLogging, allowAnonLogging) &&
            const DeepCollectionEquality()
                .equals(other.contentVersion, contentVersion) &&
            const DeepCollectionEquality()
                .equals(other.imageLinks, imageLinks) &&
            const DeepCollectionEquality().equals(other.language, language) &&
            const DeepCollectionEquality()
                .equals(other.previewLink, previewLink) &&
            const DeepCollectionEquality().equals(other.infoLink, infoLink) &&
            const DeepCollectionEquality()
                .equals(other.canonicalVolumeLink, canonicalVolumeLink));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(authors),
        const DeepCollectionEquality().hash(publisher),
        const DeepCollectionEquality().hash(publishedDate),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(industryIdentifiers),
        const DeepCollectionEquality().hash(readingModes),
        const DeepCollectionEquality().hash(pageCount),
        const DeepCollectionEquality().hash(printType),
        const DeepCollectionEquality().hash(categories),
        const DeepCollectionEquality().hash(averageRating),
        const DeepCollectionEquality().hash(ratingsCount),
        const DeepCollectionEquality().hash(maturityRating),
        const DeepCollectionEquality().hash(allowAnonLogging),
        const DeepCollectionEquality().hash(contentVersion),
        const DeepCollectionEquality().hash(imageLinks),
        const DeepCollectionEquality().hash(language),
        const DeepCollectionEquality().hash(previewLink),
        const DeepCollectionEquality().hash(infoLink),
        const DeepCollectionEquality().hash(canonicalVolumeLink)
      ]);

  @JsonKey(ignore: true)
  @override
  _$VolumeInfoCopyWith<_VolumeInfo> get copyWith =>
      __$VolumeInfoCopyWithImpl<_VolumeInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VolumeInfoToJson(this);
  }
}

abstract class _VolumeInfo implements VolumeInfo {
  factory _VolumeInfo(
      {String? title,
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
      String? canonicalVolumeLink}) = _$_VolumeInfo;

  factory _VolumeInfo.fromJson(Map<String, dynamic> json) =
      _$_VolumeInfo.fromJson;

  @override
  String? get title;
  @override
  List<String>? get authors;
  @override
  String? get publisher;
  @override
  String? get publishedDate;
  @override
  String? get description;
  @override
  List<IndustryIdentifier>? get industryIdentifiers;
  @override
  ReadingModes? get readingModes;
  @override
  int? get pageCount;
  @override
  String? get printType;
  @override
  List<String>? get categories;
  @override
  double? get averageRating;
  @override
  int? get ratingsCount;
  @override
  String? get maturityRating;
  @override
  bool? get allowAnonLogging;
  @override
  String? get contentVersion;
  @override
  ImageLinks? get imageLinks;
  @override
  String? get language;
  @override
  String? get previewLink;
  @override
  String? get infoLink;
  @override
  String? get canonicalVolumeLink;
  @override
  @JsonKey(ignore: true)
  _$VolumeInfoCopyWith<_VolumeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageLinks _$ImageLinksFromJson(Map<String, dynamic> json) {
  return _ImageLinks.fromJson(json);
}

/// @nodoc
class _$ImageLinksTearOff {
  const _$ImageLinksTearOff();

  _ImageLinks call({String? smallThumbnail, String? thumbnail}) {
    return _ImageLinks(
      smallThumbnail: smallThumbnail,
      thumbnail: thumbnail,
    );
  }

  ImageLinks fromJson(Map<String, Object?> json) {
    return ImageLinks.fromJson(json);
  }
}

/// @nodoc
const $ImageLinks = _$ImageLinksTearOff();

/// @nodoc
mixin _$ImageLinks {
  String? get smallThumbnail => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinksCopyWith<ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinksCopyWith<$Res> {
  factory $ImageLinksCopyWith(
          ImageLinks value, $Res Function(ImageLinks) then) =
      _$ImageLinksCopyWithImpl<$Res>;
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class _$ImageLinksCopyWithImpl<$Res> implements $ImageLinksCopyWith<$Res> {
  _$ImageLinksCopyWithImpl(this._value, this._then);

  final ImageLinks _value;
  // ignore: unused_field
  final $Res Function(ImageLinks) _then;

  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: smallThumbnail == freezed
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ImageLinksCopyWith<$Res> implements $ImageLinksCopyWith<$Res> {
  factory _$ImageLinksCopyWith(
          _ImageLinks value, $Res Function(_ImageLinks) then) =
      __$ImageLinksCopyWithImpl<$Res>;
  @override
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class __$ImageLinksCopyWithImpl<$Res> extends _$ImageLinksCopyWithImpl<$Res>
    implements _$ImageLinksCopyWith<$Res> {
  __$ImageLinksCopyWithImpl(
      _ImageLinks _value, $Res Function(_ImageLinks) _then)
      : super(_value, (v) => _then(v as _ImageLinks));

  @override
  _ImageLinks get _value => super._value as _ImageLinks;

  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_ImageLinks(
      smallThumbnail: smallThumbnail == freezed
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageLinks implements _ImageLinks {
  _$_ImageLinks({this.smallThumbnail, this.thumbnail});

  factory _$_ImageLinks.fromJson(Map<String, dynamic> json) =>
      _$$_ImageLinksFromJson(json);

  @override
  final String? smallThumbnail;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageLinks &&
            const DeepCollectionEquality()
                .equals(other.smallThumbnail, smallThumbnail) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(smallThumbnail),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$ImageLinksCopyWith<_ImageLinks> get copyWith =>
      __$ImageLinksCopyWithImpl<_ImageLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageLinksToJson(this);
  }
}

abstract class _ImageLinks implements ImageLinks {
  factory _ImageLinks({String? smallThumbnail, String? thumbnail}) =
      _$_ImageLinks;

  factory _ImageLinks.fromJson(Map<String, dynamic> json) =
      _$_ImageLinks.fromJson;

  @override
  String? get smallThumbnail;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$ImageLinksCopyWith<_ImageLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

IndustryIdentifier _$IndustryIdentifierFromJson(Map<String, dynamic> json) {
  return _IndustryIdentifier.fromJson(json);
}

/// @nodoc
class _$IndustryIdentifierTearOff {
  const _$IndustryIdentifierTearOff();

  _IndustryIdentifier call({String? type, String? identifier}) {
    return _IndustryIdentifier(
      type: type,
      identifier: identifier,
    );
  }

  IndustryIdentifier fromJson(Map<String, Object?> json) {
    return IndustryIdentifier.fromJson(json);
  }
}

/// @nodoc
const $IndustryIdentifier = _$IndustryIdentifierTearOff();

/// @nodoc
mixin _$IndustryIdentifier {
  String? get type => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndustryIdentifierCopyWith<IndustryIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryIdentifierCopyWith<$Res> {
  factory $IndustryIdentifierCopyWith(
          IndustryIdentifier value, $Res Function(IndustryIdentifier) then) =
      _$IndustryIdentifierCopyWithImpl<$Res>;
  $Res call({String? type, String? identifier});
}

/// @nodoc
class _$IndustryIdentifierCopyWithImpl<$Res>
    implements $IndustryIdentifierCopyWith<$Res> {
  _$IndustryIdentifierCopyWithImpl(this._value, this._then);

  final IndustryIdentifier _value;
  // ignore: unused_field
  final $Res Function(IndustryIdentifier) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$IndustryIdentifierCopyWith<$Res>
    implements $IndustryIdentifierCopyWith<$Res> {
  factory _$IndustryIdentifierCopyWith(
          _IndustryIdentifier value, $Res Function(_IndustryIdentifier) then) =
      __$IndustryIdentifierCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? identifier});
}

/// @nodoc
class __$IndustryIdentifierCopyWithImpl<$Res>
    extends _$IndustryIdentifierCopyWithImpl<$Res>
    implements _$IndustryIdentifierCopyWith<$Res> {
  __$IndustryIdentifierCopyWithImpl(
      _IndustryIdentifier _value, $Res Function(_IndustryIdentifier) _then)
      : super(_value, (v) => _then(v as _IndustryIdentifier));

  @override
  _IndustryIdentifier get _value => super._value as _IndustryIdentifier;

  @override
  $Res call({
    Object? type = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_IndustryIdentifier(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      identifier: identifier == freezed
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IndustryIdentifier implements _IndustryIdentifier {
  _$_IndustryIdentifier({this.type, this.identifier});

  factory _$_IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$$_IndustryIdentifierFromJson(json);

  @override
  final String? type;
  @override
  final String? identifier;

  @override
  String toString() {
    return 'IndustryIdentifier(type: $type, identifier: $identifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndustryIdentifier &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.identifier, identifier));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(identifier));

  @JsonKey(ignore: true)
  @override
  _$IndustryIdentifierCopyWith<_IndustryIdentifier> get copyWith =>
      __$IndustryIdentifierCopyWithImpl<_IndustryIdentifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IndustryIdentifierToJson(this);
  }
}

abstract class _IndustryIdentifier implements IndustryIdentifier {
  factory _IndustryIdentifier({String? type, String? identifier}) =
      _$_IndustryIdentifier;

  factory _IndustryIdentifier.fromJson(Map<String, dynamic> json) =
      _$_IndustryIdentifier.fromJson;

  @override
  String? get type;
  @override
  String? get identifier;
  @override
  @JsonKey(ignore: true)
  _$IndustryIdentifierCopyWith<_IndustryIdentifier> get copyWith =>
      throw _privateConstructorUsedError;
}

ReadingModes _$ReadingModesFromJson(Map<String, dynamic> json) {
  return _ReadingModes.fromJson(json);
}

/// @nodoc
class _$ReadingModesTearOff {
  const _$ReadingModesTearOff();

  _ReadingModes call({bool? text, bool? image}) {
    return _ReadingModes(
      text: text,
      image: image,
    );
  }

  ReadingModes fromJson(Map<String, Object?> json) {
    return ReadingModes.fromJson(json);
  }
}

/// @nodoc
const $ReadingModes = _$ReadingModesTearOff();

/// @nodoc
mixin _$ReadingModes {
  bool? get text => throw _privateConstructorUsedError;
  bool? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadingModesCopyWith<ReadingModes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadingModesCopyWith<$Res> {
  factory $ReadingModesCopyWith(
          ReadingModes value, $Res Function(ReadingModes) then) =
      _$ReadingModesCopyWithImpl<$Res>;
  $Res call({bool? text, bool? image});
}

/// @nodoc
class _$ReadingModesCopyWithImpl<$Res> implements $ReadingModesCopyWith<$Res> {
  _$ReadingModesCopyWithImpl(this._value, this._then);

  final ReadingModes _value;
  // ignore: unused_field
  final $Res Function(ReadingModes) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ReadingModesCopyWith<$Res>
    implements $ReadingModesCopyWith<$Res> {
  factory _$ReadingModesCopyWith(
          _ReadingModes value, $Res Function(_ReadingModes) then) =
      __$ReadingModesCopyWithImpl<$Res>;
  @override
  $Res call({bool? text, bool? image});
}

/// @nodoc
class __$ReadingModesCopyWithImpl<$Res> extends _$ReadingModesCopyWithImpl<$Res>
    implements _$ReadingModesCopyWith<$Res> {
  __$ReadingModesCopyWithImpl(
      _ReadingModes _value, $Res Function(_ReadingModes) _then)
      : super(_value, (v) => _then(v as _ReadingModes));

  @override
  _ReadingModes get _value => super._value as _ReadingModes;

  @override
  $Res call({
    Object? text = freezed,
    Object? image = freezed,
  }) {
    return _then(_ReadingModes(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadingModes implements _ReadingModes {
  _$_ReadingModes({this.text, this.image});

  factory _$_ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$$_ReadingModesFromJson(json);

  @override
  final bool? text;
  @override
  final bool? image;

  @override
  String toString() {
    return 'ReadingModes(text: $text, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadingModes &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$ReadingModesCopyWith<_ReadingModes> get copyWith =>
      __$ReadingModesCopyWithImpl<_ReadingModes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadingModesToJson(this);
  }
}

abstract class _ReadingModes implements ReadingModes {
  factory _ReadingModes({bool? text, bool? image}) = _$_ReadingModes;

  factory _ReadingModes.fromJson(Map<String, dynamic> json) =
      _$_ReadingModes.fromJson;

  @override
  bool? get text;
  @override
  bool? get image;
  @override
  @JsonKey(ignore: true)
  _$ReadingModesCopyWith<_ReadingModes> get copyWith =>
      throw _privateConstructorUsedError;
}
