//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of asset_manager.api;

class AssetPagination {
  /// Returns a new [AssetPagination] instance.
  AssetPagination({
    this.limit,
    this.page,
    this.sort,
    this.totalRows,
    this.totalPages,
    this.data = const [],
  });

  /// The maximum number of results per page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// The current page number.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  /// The sorting parameter used to order the results.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sort;

  /// The total number of rows in the result set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalRows;

  /// The total number of pages in the result set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPages;

  /// An array of data elements containing the requested information.
  List<Asset> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AssetPagination &&
     other.limit == limit &&
     other.page == page &&
     other.sort == sort &&
     other.totalRows == totalRows &&
     other.totalPages == totalPages &&
     other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit!.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (sort == null ? 0 : sort!.hashCode) +
    (totalRows == null ? 0 : totalRows!.hashCode) +
    (totalPages == null ? 0 : totalPages!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'AssetPagination[limit=$limit, page=$page, sort=$sort, totalRows=$totalRows, totalPages=$totalPages, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.sort != null) {
      json[r'sort'] = this.sort;
    } else {
      json[r'sort'] = null;
    }
    if (this.totalRows != null) {
      json[r'total_rows'] = this.totalRows;
    } else {
      json[r'total_rows'] = null;
    }
    if (this.totalPages != null) {
      json[r'total_pages'] = this.totalPages;
    } else {
      json[r'total_pages'] = null;
    }
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [AssetPagination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AssetPagination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AssetPagination[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AssetPagination[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AssetPagination(
        limit: mapValueOfType<int>(json, r'limit'),
        page: mapValueOfType<int>(json, r'page'),
        sort: mapValueOfType<String>(json, r'sort'),
        totalRows: mapValueOfType<int>(json, r'total_rows'),
        totalPages: mapValueOfType<int>(json, r'total_pages'),
        data: Asset.listFromJson(json[r'data']) ?? const [],
      );
    }
    return null;
  }

  static List<AssetPagination>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AssetPagination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AssetPagination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AssetPagination> mapFromJson(dynamic json) {
    final map = <String, AssetPagination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetPagination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AssetPagination-objects as value to a dart map
  static Map<String, List<AssetPagination>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AssetPagination>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AssetPagination.listFromJson(entry.value, growable: growable,);
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

