//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of search.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Perform search
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SearchPerformSearchPostRequest] searchPerformSearchPostRequest:
  Future<Response> searchPerformSearchPostWithHttpInfo({ SearchPerformSearchPostRequest? searchPerformSearchPostRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/search/perform_search';

    // ignore: prefer_final_locals
    Object? postBody = searchPerformSearchPostRequest;

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

  /// Perform search
  ///
  /// Parameters:
  ///
  /// * [SearchPerformSearchPostRequest] searchPerformSearchPostRequest:
  Future<List<Asset>?> searchPerformSearchPost({ SearchPerformSearchPostRequest? searchPerformSearchPostRequest, }) async {
    final response = await searchPerformSearchPostWithHttpInfo( searchPerformSearchPostRequest: searchPerformSearchPostRequest, );
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

  /// Retrieve search history by user ID
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> searchSearchHistoryLoggedGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/search/search_history_logged';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Retrieve search history by user ID
  Future<List<Search>?> searchSearchHistoryLoggedGet() async {
    final response = await searchSearchHistoryLoggedGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Search>') as List)
        .cast<Search>()
        .toList();

    }
    return null;
  }
}
