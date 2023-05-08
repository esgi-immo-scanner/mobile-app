//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of bookmarks.api;


class FavoritesApi {
  FavoritesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a bookmark
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BookmarkRequest] bookmarkRequest (required):
  Future<Response> makeBookmarkWithHttpInfo(BookmarkRequest bookmarkRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/bookmarks/make';

    // ignore: prefer_final_locals
    Object? postBody = bookmarkRequest;

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

  /// Add a bookmark
  ///
  /// Parameters:
  ///
  /// * [BookmarkRequest] bookmarkRequest (required):
  Future<Bookmark?> makeBookmark(BookmarkRequest bookmarkRequest,) async {
    final response = await makeBookmarkWithHttpInfo(bookmarkRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Bookmark',) as Bookmark;
    
    }
    return null;
  }

  /// Get user's logged in bookmarks
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> userBookmarksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/bookmarks';

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

  /// Get user's logged in bookmarks
  Future<List<Bookmark>?> userBookmarks() async {
    final response = await userBookmarksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Bookmark>') as List)
        .cast<Bookmark>()
        .toList();

    }
    return null;
  }
}
