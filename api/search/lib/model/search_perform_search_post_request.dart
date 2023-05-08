//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of search.api;

class SearchPerformSearchPostRequest {
  /// Returns a new [SearchPerformSearchPostRequest] instance.
  SearchPerformSearchPostRequest({
    this.searchFilter,
    this.userId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SearchAssetsParams? searchFilter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchPerformSearchPostRequest &&
     other.searchFilter == searchFilter &&
     other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (searchFilter == null ? 0 : searchFilter!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'SearchPerformSearchPostRequest[searchFilter=$searchFilter, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.searchFilter != null) {
      json[r'search_filter'] = this.searchFilter;
    } else {
      json[r'search_filter'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    return json;
  }

  /// Returns a new [SearchPerformSearchPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchPerformSearchPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SearchPerformSearchPostRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SearchPerformSearchPostRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SearchPerformSearchPostRequest(
        searchFilter: SearchAssetsParams.fromJson(json[r'search_filter']),
        userId: mapValueOfType<String>(json, r'user_id'),
      );
    }
    return null;
  }

  static List<SearchPerformSearchPostRequest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchPerformSearchPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchPerformSearchPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchPerformSearchPostRequest> mapFromJson(dynamic json) {
    final map = <String, SearchPerformSearchPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchPerformSearchPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchPerformSearchPostRequest-objects as value to a dart map
  static Map<String, List<SearchPerformSearchPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchPerformSearchPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchPerformSearchPostRequest.listFromJson(entry.value, growable: growable,);
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

