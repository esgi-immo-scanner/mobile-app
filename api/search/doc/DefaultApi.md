# search.api.DefaultApi

## Load the API package
```dart
import 'package:search/api.dart';
```

All URIs are relative to *https://immo-scanner.enzofoucaud.fr/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchPerformSearchPost**](DefaultApi.md#searchperformsearchpost) | **POST** /search/perform_search | Perform search
[**searchSearchHistoryLoggedGet**](DefaultApi.md#searchsearchhistoryloggedget) | **GET** /search/search_history_logged | Retrieve search history by user ID


# **searchPerformSearchPost**
> List<Asset> searchPerformSearchPost(searchPerformSearchPostRequest)

Perform search

### Example
```dart
import 'package:search/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final searchPerformSearchPostRequest = SearchPerformSearchPostRequest(); // SearchPerformSearchPostRequest | 

try {
    final result = api_instance.searchPerformSearchPost(searchPerformSearchPostRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->searchPerformSearchPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchPerformSearchPostRequest** | [**SearchPerformSearchPostRequest**](SearchPerformSearchPostRequest.md)|  | [optional] 

### Return type

[**List<Asset>**](Asset.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSearchHistoryLoggedGet**
> List<Search> searchSearchHistoryLoggedGet()

Retrieve search history by user ID

### Example
```dart
import 'package:search/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.searchSearchHistoryLoggedGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->searchSearchHistoryLoggedGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Search>**](Search.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

