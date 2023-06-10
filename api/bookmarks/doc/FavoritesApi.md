# bookmarks.api.FavoritesApi

## Load the API package
```dart
import 'package:bookmarks/api.dart';
```

All URIs are relative to *https://immo-scanner.enzofoucaud.fr/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**makeBookmark**](FavoritesApi.md#makebookmark) | **POST** /bookmarks/make | Add a bookmark
[**userBookmarks**](FavoritesApi.md#userbookmarks) | **GET** /bookmarks | Get user's logged in bookmarks


# **makeBookmark**
> Bookmark makeBookmark(bookmarkRequest)

Add a bookmark

### Example
```dart
import 'package:bookmarks/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FavoritesApi();
final bookmarkRequest = BookmarkRequest(); // BookmarkRequest | 

try {
    final result = api_instance.makeBookmark(bookmarkRequest);
    print(result);
} catch (e) {
    print('Exception when calling FavoritesApi->makeBookmark: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookmarkRequest** | [**BookmarkRequest**](BookmarkRequest.md)|  | 

### Return type

[**Bookmark**](Bookmark.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBookmarks**
> List<Bookmark> userBookmarks()

Get user's logged in bookmarks

### Example
```dart
import 'package:bookmarks/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FavoritesApi();

try {
    final result = api_instance.userBookmarks();
    print(result);
} catch (e) {
    print('Exception when calling FavoritesApi->userBookmarks: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Bookmark>**](Bookmark.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

