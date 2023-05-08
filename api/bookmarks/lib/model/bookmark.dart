//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of bookmarks.api;

class Bookmark {
  /// Returns a new [Bookmark] instance.
  Bookmark({
    this.id,
    required this.userId,
    required this.assetId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  int userId;

  String assetId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Bookmark &&
     other.id == id &&
     other.userId == userId &&
     other.assetId == assetId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (userId.hashCode) +
    (assetId.hashCode);

  @override
  String toString() => 'Bookmark[id=$id, userId=$userId, assetId=$assetId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'user_id'] = this.userId;
      json[r'asset_id'] = this.assetId;
    return json;
  }

  /// Returns a new [Bookmark] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Bookmark? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Bookmark[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Bookmark[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Bookmark(
        id: mapValueOfType<int>(json, r'id'),
        userId: mapValueOfType<int>(json, r'user_id')!,
        assetId: mapValueOfType<String>(json, r'asset_id')!,
      );
    }
    return null;
  }

  static List<Bookmark>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Bookmark>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Bookmark.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Bookmark> mapFromJson(dynamic json) {
    final map = <String, Bookmark>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Bookmark.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Bookmark-objects as value to a dart map
  static Map<String, List<Bookmark>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Bookmark>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Bookmark.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user_id',
    'asset_id',
  };
}

