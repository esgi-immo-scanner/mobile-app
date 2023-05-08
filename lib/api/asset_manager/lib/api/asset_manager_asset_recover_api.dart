//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of asset_manager.api;


class AssetManagerAssetRecoverApi {
  AssetManagerAssetRecoverApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Make Scrapping
  ///
  /// Make scraping from lobstrio
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accept:
  ///
  /// * [String] country:
  ///
  /// * [String] region:
  ///
  /// * [String] department:
  Future<Response> makeScrappingWithHttpInfo({ String? accept, String? country, String? region, String? department, }) async {
    // ignore: prefer_const_declarations
    final path = r'/asset-manager/asset/recover/scrapping';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (country != null) {
      queryParams.addAll(_queryParams('', 'country', country));
    }
    if (region != null) {
      queryParams.addAll(_queryParams('', 'region', region));
    }
    if (department != null) {
      queryParams.addAll(_queryParams('', 'department', department));
    }

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

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

  /// Make Scrapping
  ///
  /// Make scraping from lobstrio
  ///
  /// Parameters:
  ///
  /// * [String] accept:
  ///
  /// * [String] country:
  ///
  /// * [String] region:
  ///
  /// * [String] department:
  Future<List<Asset>?> makeScrapping({ String? accept, String? country, String? region, String? department, }) async {
    final response = await makeScrappingWithHttpInfo( accept: accept, country: country, region: region, department: department, );
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
}
