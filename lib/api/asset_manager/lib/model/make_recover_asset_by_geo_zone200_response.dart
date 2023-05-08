//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of asset_manager.api;

class MakeRecoverAssetByGeoZone200Response {
  /// Returns a new [MakeRecoverAssetByGeoZone200Response] instance.
  MakeRecoverAssetByGeoZone200Response({
    this.geoZone,
    this.assets = const [],
  });

  /// The Name of the geo zone for which the asset should be recovered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? geoZone;

  List<Asset> assets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MakeRecoverAssetByGeoZone200Response &&
     other.geoZone == geoZone &&
     other.assets == assets;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (geoZone == null ? 0 : geoZone!.hashCode) +
    (assets.hashCode);

  @override
  String toString() => 'MakeRecoverAssetByGeoZone200Response[geoZone=$geoZone, assets=$assets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.geoZone != null) {
      json[r'geo_zone'] = this.geoZone;
    } else {
      json[r'geo_zone'] = null;
    }
      json[r'assets'] = this.assets;
    return json;
  }

  /// Returns a new [MakeRecoverAssetByGeoZone200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MakeRecoverAssetByGeoZone200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MakeRecoverAssetByGeoZone200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MakeRecoverAssetByGeoZone200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MakeRecoverAssetByGeoZone200Response(
        geoZone: mapValueOfType<String>(json, r'geo_zone'),
        assets: Asset.listFromJson(json[r'assets']) ?? const [],
      );
    }
    return null;
  }

  static List<MakeRecoverAssetByGeoZone200Response>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MakeRecoverAssetByGeoZone200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MakeRecoverAssetByGeoZone200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MakeRecoverAssetByGeoZone200Response> mapFromJson(dynamic json) {
    final map = <String, MakeRecoverAssetByGeoZone200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MakeRecoverAssetByGeoZone200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MakeRecoverAssetByGeoZone200Response-objects as value to a dart map
  static Map<String, List<MakeRecoverAssetByGeoZone200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MakeRecoverAssetByGeoZone200Response>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MakeRecoverAssetByGeoZone200Response.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

