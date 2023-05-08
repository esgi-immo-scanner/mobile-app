//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of asset_manager.api;

class Details {
  /// Returns a new [Details] instance.
  Details({
    this.GES,
    this.surface,
    this.honoraires,
    this.rfrence,
    this.tageDuBien,
    this.typeDeBien,
    this.classeNergie,
    this.nombreDeChambres,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? GES;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? surface;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? honoraires;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rfrence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tageDuBien;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? typeDeBien;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? classeNergie;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nombreDeChambres;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Details &&
     other.GES == GES &&
     other.surface == surface &&
     other.honoraires == honoraires &&
     other.rfrence == rfrence &&
     other.tageDuBien == tageDuBien &&
     other.typeDeBien == typeDeBien &&
     other.classeNergie == classeNergie &&
     other.nombreDeChambres == nombreDeChambres;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (GES == null ? 0 : GES!.hashCode) +
    (surface == null ? 0 : surface!.hashCode) +
    (honoraires == null ? 0 : honoraires!.hashCode) +
    (rfrence == null ? 0 : rfrence!.hashCode) +
    (tageDuBien == null ? 0 : tageDuBien!.hashCode) +
    (typeDeBien == null ? 0 : typeDeBien!.hashCode) +
    (classeNergie == null ? 0 : classeNergie!.hashCode) +
    (nombreDeChambres == null ? 0 : nombreDeChambres!.hashCode);

  @override
  String toString() => 'Details[GES=$GES, surface=$surface, honoraires=$honoraires, rfrence=$rfrence, tageDuBien=$tageDuBien, typeDeBien=$typeDeBien, classeNergie=$classeNergie, nombreDeChambres=$nombreDeChambres]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.GES != null) {
      json[r'GES'] = this.GES;
    } else {
      json[r'GES'] = null;
    }
    if (this.surface != null) {
      json[r'Surface'] = this.surface;
    } else {
      json[r'Surface'] = null;
    }
    if (this.honoraires != null) {
      json[r'Honoraires'] = this.honoraires;
    } else {
      json[r'Honoraires'] = null;
    }
    if (this.rfrence != null) {
      json[r'Référence'] = this.rfrence;
    } else {
      json[r'Référence'] = null;
    }
    if (this.tageDuBien != null) {
      json[r'Étage du bien'] = this.tageDuBien;
    } else {
      json[r'Étage du bien'] = null;
    }
    if (this.typeDeBien != null) {
      json[r'Type de bien'] = this.typeDeBien;
    } else {
      json[r'Type de bien'] = null;
    }
    if (this.classeNergie != null) {
      json[r'Classe énergie'] = this.classeNergie;
    } else {
      json[r'Classe énergie'] = null;
    }
    if (this.nombreDeChambres != null) {
      json[r'Nombre de chambres'] = this.nombreDeChambres;
    } else {
      json[r'Nombre de chambres'] = null;
    }
    return json;
  }

  /// Returns a new [Details] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Details? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Details[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Details[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Details(
        GES: mapValueOfType<String>(json, r'GES'),
        surface: mapValueOfType<String>(json, r'Surface'),
        honoraires: mapValueOfType<String>(json, r'Honoraires'),
        rfrence: mapValueOfType<String>(json, r'Référence'),
        tageDuBien: mapValueOfType<String>(json, r'Étage du bien'),
        typeDeBien: mapValueOfType<String>(json, r'Type de bien'),
        classeNergie: mapValueOfType<String>(json, r'Classe énergie'),
        nombreDeChambres: mapValueOfType<String>(json, r'Nombre de chambres'),
      );
    }
    return null;
  }

  static List<Details>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Details>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Details.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Details> mapFromJson(dynamic json) {
    final map = <String, Details>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Details.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Details-objects as value to a dart map
  static Map<String, List<Details>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Details>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Details.listFromJson(entry.value, growable: growable,);
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

