//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of search.api;

class Asset {
  /// Returns a new [Asset] instance.
  Asset({
    required this.id,
    required this.geoZone,
    required this.price,
    required this.roomCount,
    required this.surfaceArea,
    required this.pictures,
    required this.realEstateType,
  });

  String id;

  GeoZone geoZone;

  double price;

  int roomCount;

  double surfaceArea;

  String pictures;

  String realEstateType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Asset &&
     other.id == id &&
     other.geoZone == geoZone &&
     other.price == price &&
     other.roomCount == roomCount &&
     other.surfaceArea == surfaceArea &&
     other.pictures == pictures &&
     other.realEstateType == realEstateType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (geoZone.hashCode) +
    (price.hashCode) +
    (roomCount.hashCode) +
    (surfaceArea.hashCode) +
    (pictures.hashCode) +
    (realEstateType.hashCode);

  @override
  String toString() => 'Asset[id=$id, geoZone=$geoZone, price=$price, roomCount=$roomCount, surfaceArea=$surfaceArea, pictures=$pictures, realEstateType=$realEstateType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'geo_zone'] = this.geoZone;
      json[r'price'] = this.price;
      json[r'room_count'] = this.roomCount;
      json[r'surface_area'] = this.surfaceArea;
      json[r'pictures'] = this.pictures;
      json[r'real_estate_type'] = this.realEstateType;
    return json;
  }

  /// Returns a new [Asset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Asset? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Asset[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Asset[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Asset(
        id: mapValueOfType<String>(json, r'id')!,
        geoZone: GeoZone.fromJson(json[r'geo_zone'])!,
        price: mapValueOfType<double>(json, r'price')!,
        roomCount: mapValueOfType<int>(json, r'room_count')!,
        surfaceArea: mapValueOfType<double>(json, r'surface_area')!,
        pictures: mapValueOfType<String>(json, r'pictures')!,
        realEstateType: mapValueOfType<String>(json, r'real_estate_type')!,
      );
    }
    return null;
  }

  static List<Asset>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Asset>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Asset.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Asset> mapFromJson(dynamic json) {
    final map = <String, Asset>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Asset.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Asset-objects as value to a dart map
  static Map<String, List<Asset>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Asset>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Asset.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'geo_zone',
    'price',
    'room_count',
    'surface_area',
    'pictures',
    'real_estate_type',
  };
}

