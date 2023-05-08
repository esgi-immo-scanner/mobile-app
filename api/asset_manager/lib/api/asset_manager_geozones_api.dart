//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of asset_manager.api;


class AssetManagerGeozonesApi {
  AssetManagerGeozonesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// browse
  ///
  /// browse
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  Future<Response> browseGeoZonesWithHttpInfo({ String? name, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset-manager/geozones/browse';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// browse
  ///
  /// browse
  ///
  /// Parameters:
  ///
  /// * [String] name:
  Future<List<GeoZone>?> browseGeoZones({ String? name, }) async {
    final response = await browseGeoZonesWithHttpInfo( name: name, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<GeoZone>') as List)
        .cast<GeoZone>()
        .toList();

    }
    return null;
  }

  /// create
  ///
  /// create
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GeoZone] geoZone (required):
  Future<Response> createGeoZonesWithHttpInfo(GeoZone geoZone,) async {
    // ignore: prefer_const_declarations
    final path = r'/asset-manager/geozones';

    // ignore: prefer_final_locals
    Object? postBody = geoZone;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// create
  ///
  /// create
  ///
  /// Parameters:
  ///
  /// * [GeoZone] geoZone (required):
  Future<void> createGeoZones(GeoZone geoZone,) async {
    final response = await createGeoZonesWithHttpInfo(geoZone,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
