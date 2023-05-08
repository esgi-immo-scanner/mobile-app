//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of asset_manager.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// IdentifySelled
  ///
  /// Identify Selled asset by doing a comparison in scrapping result and db data
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> assetIdentifySelledWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/asset-manager/asset/identify-selled';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// IdentifySelled
  ///
  /// Identify Selled asset by doing a comparison in scrapping result and db data
  Future<List<Asset>?> assetIdentifySelled() async {
    final response = await assetIdentifySelledWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Asset>') as List)
        .cast<Asset>()
        .toList();

    }
    return null;
  }

  /// MakeRecover
  ///
  /// Root command that lauch all scraping and db persist process
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MakeRecoverAssetByGeoZoneRequest] makeRecoverAssetByGeoZoneRequest (required):
  Future<Response> makeRecoverAssetByGeoZoneWithHttpInfo(MakeRecoverAssetByGeoZoneRequest makeRecoverAssetByGeoZoneRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/asset-manager/asset/recover';

    // ignore: prefer_final_locals
    Object? postBody = makeRecoverAssetByGeoZoneRequest;

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

  /// MakeRecover
  ///
  /// Root command that lauch all scraping and db persist process
  ///
  /// Parameters:
  ///
  /// * [MakeRecoverAssetByGeoZoneRequest] makeRecoverAssetByGeoZoneRequest (required):
  Future<MakeRecoverAssetByGeoZone200Response?> makeRecoverAssetByGeoZone(MakeRecoverAssetByGeoZoneRequest makeRecoverAssetByGeoZoneRequest,) async {
    final response = await makeRecoverAssetByGeoZoneWithHttpInfo(makeRecoverAssetByGeoZoneRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MakeRecoverAssetByGeoZone200Response',) as MakeRecoverAssetByGeoZone200Response;
    
    }
    return null;
  }

  /// Search assets
  ///
  /// Search for assets based on various criteria such as geo zone, price, rooms, and surface.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] geoZone:
  ///   Geo zone to search for assets
  ///
  /// * [double] minPrice:
  ///   Minimum price for assets
  ///
  /// * [double] maxPrice:
  ///   Maximum price for assets
  ///
  /// * [int] minRooms:
  ///   Minimum number of rooms for assets
  ///
  /// * [int] maxRooms:
  ///   Maximum number of rooms for assets
  ///
  /// * [int] minSurface:
  ///   Minimum surface for assets
  ///
  /// * [int] maxSurface:
  ///   Maximum surface for assets
  ///
  /// * [int] limit:
  ///   The maximum number of items to return
  ///
  /// * [int] page:
  ///   The page number to return
  ///
  /// * [String] sort:
  ///   The sorting order
  ///
  /// * [List<String>] ids:
  ///   The ids of the assets to return (taking priority on other criteria)
  Future<Response> searchAssetsWithHttpInfo({ String? geoZone, double? minPrice, double? maxPrice, int? minRooms, int? maxRooms, int? minSurface, int? maxSurface, int? limit, int? page, String? sort, List<String>? ids, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset-manager/assets/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (geoZone != null) {
      queryParams.addAll(_queryParams('', 'geo_zone', geoZone));
    }
    if (minPrice != null) {
      queryParams.addAll(_queryParams('', 'min_price', minPrice));
    }
    if (maxPrice != null) {
      queryParams.addAll(_queryParams('', 'max_price', maxPrice));
    }
    if (minRooms != null) {
      queryParams.addAll(_queryParams('', 'min_rooms', minRooms));
    }
    if (maxRooms != null) {
      queryParams.addAll(_queryParams('', 'max_rooms', maxRooms));
    }
    if (minSurface != null) {
      queryParams.addAll(_queryParams('', 'min_surface', minSurface));
    }
    if (maxSurface != null) {
      queryParams.addAll(_queryParams('', 'max_surface', maxSurface));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (ids != null) {
      queryParams.addAll(_queryParams('multi', 'ids', ids));
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

  /// Search assets
  ///
  /// Search for assets based on various criteria such as geo zone, price, rooms, and surface.
  ///
  /// Parameters:
  ///
  /// * [String] geoZone:
  ///   Geo zone to search for assets
  ///
  /// * [double] minPrice:
  ///   Minimum price for assets
  ///
  /// * [double] maxPrice:
  ///   Maximum price for assets
  ///
  /// * [int] minRooms:
  ///   Minimum number of rooms for assets
  ///
  /// * [int] maxRooms:
  ///   Maximum number of rooms for assets
  ///
  /// * [int] minSurface:
  ///   Minimum surface for assets
  ///
  /// * [int] maxSurface:
  ///   Maximum surface for assets
  ///
  /// * [int] limit:
  ///   The maximum number of items to return
  ///
  /// * [int] page:
  ///   The page number to return
  ///
  /// * [String] sort:
  ///   The sorting order
  ///
  /// * [List<String>] ids:
  ///   The ids of the assets to return (taking priority on other criteria)
  Future<AssetPagination?> searchAssets({ String? geoZone, double? minPrice, double? maxPrice, int? minRooms, int? maxRooms, int? minSurface, int? maxSurface, int? limit, int? page, String? sort, List<String>? ids, }) async {
    final response = await searchAssetsWithHttpInfo( geoZone: geoZone, minPrice: minPrice, maxPrice: maxPrice, minRooms: minRooms, maxRooms: maxRooms, minSurface: minSurface, maxSurface: maxSurface, limit: limit, page: page, sort: sort, ids: ids, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AssetPagination',) as AssetPagination;
    
    }
    return null;
  }
}
