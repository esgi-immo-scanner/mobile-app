//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of search.api;

class SearchAssetsParams {
  /// Returns a new [SearchAssetsParams] instance.
  SearchAssetsParams({
    required this.minPrice,
    required this.maxPrice,
    required this.minArea,
    required this.maxArea,
    required this.propertyType,
    required this.location,
  });

  /// Minimum value: 0
  int minPrice;

  /// Minimum value: 0
  int maxPrice;

  /// Minimum value: 0
  int minArea;

  /// Minimum value: 0
  int maxArea;

  SearchAssetsParamsPropertyTypeEnum propertyType;

  String location;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchAssetsParams &&
     other.minPrice == minPrice &&
     other.maxPrice == maxPrice &&
     other.minArea == minArea &&
     other.maxArea == maxArea &&
     other.propertyType == propertyType &&
     other.location == location;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (minPrice.hashCode) +
    (maxPrice.hashCode) +
    (minArea.hashCode) +
    (maxArea.hashCode) +
    (propertyType.hashCode) +
    (location.hashCode);

  @override
  String toString() => 'SearchAssetsParams[minPrice=$minPrice, maxPrice=$maxPrice, minArea=$minArea, maxArea=$maxArea, propertyType=$propertyType, location=$location]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'min_price'] = this.minPrice;
      json[r'max_price'] = this.maxPrice;
      json[r'min_area'] = this.minArea;
      json[r'max_area'] = this.maxArea;
      json[r'property_type'] = this.propertyType;
      json[r'location'] = this.location;
    return json;
  }

  /// Returns a new [SearchAssetsParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchAssetsParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchAssetsParams[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchAssetsParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchAssetsParams(
        minPrice: mapValueOfType<int>(json, r'min_price')!,
        maxPrice: mapValueOfType<int>(json, r'max_price')!,
        minArea: mapValueOfType<int>(json, r'min_area')!,
        maxArea: mapValueOfType<int>(json, r'max_area')!,
        propertyType: SearchAssetsParamsPropertyTypeEnum.fromJson(json[r'property_type'])!,
        location: mapValueOfType<String>(json, r'location')!,
      );
    }
    return null;
  }

  static List<SearchAssetsParams>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchAssetsParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchAssetsParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchAssetsParams> mapFromJson(dynamic json) {
    final map = <String, SearchAssetsParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchAssetsParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchAssetsParams-objects as value to a dart map
  static Map<String, List<SearchAssetsParams>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchAssetsParams>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchAssetsParams.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'min_price',
    'max_price',
    'min_area',
    'max_area',
    'property_type',
    'location',
  };
}


class SearchAssetsParamsPropertyTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SearchAssetsParamsPropertyTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const house = SearchAssetsParamsPropertyTypeEnum._(r'house');
  static const apartment = SearchAssetsParamsPropertyTypeEnum._(r'apartment');
  static const commercial = SearchAssetsParamsPropertyTypeEnum._(r'commercial');

  /// List of all possible values in this [enum][SearchAssetsParamsPropertyTypeEnum].
  static const values = <SearchAssetsParamsPropertyTypeEnum>[
    house,
    apartment,
    commercial,
  ];

  static SearchAssetsParamsPropertyTypeEnum? fromJson(dynamic value) => SearchAssetsParamsPropertyTypeEnumTypeTransformer().decode(value);

  static List<SearchAssetsParamsPropertyTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchAssetsParamsPropertyTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchAssetsParamsPropertyTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SearchAssetsParamsPropertyTypeEnum] to String,
/// and [decode] dynamic data back to [SearchAssetsParamsPropertyTypeEnum].
class SearchAssetsParamsPropertyTypeEnumTypeTransformer {
  factory SearchAssetsParamsPropertyTypeEnumTypeTransformer() => _instance ??= const SearchAssetsParamsPropertyTypeEnumTypeTransformer._();

  const SearchAssetsParamsPropertyTypeEnumTypeTransformer._();

  String encode(SearchAssetsParamsPropertyTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SearchAssetsParamsPropertyTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SearchAssetsParamsPropertyTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'house': return SearchAssetsParamsPropertyTypeEnum.house;
        case r'apartment': return SearchAssetsParamsPropertyTypeEnum.apartment;
        case r'commercial': return SearchAssetsParamsPropertyTypeEnum.commercial;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SearchAssetsParamsPropertyTypeEnumTypeTransformer] instance.
  static SearchAssetsParamsPropertyTypeEnumTypeTransformer? _instance;
}


