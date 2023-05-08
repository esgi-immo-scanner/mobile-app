# asset_manager.api.AssetManagerAssetRecoverApi

## Load the API package
```dart
import 'package:asset_manager/api.dart';
```

All URIs are relative to *http://localhost:3001/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**makeScrapping**](AssetManagerAssetRecoverApi.md#makescrapping) | **POST** /asset-manager/asset/recover/scrapping | Make Scrapping


# **makeScrapping**
> List<Asset> makeScrapping(accept, country, region, department)

Make Scrapping

Make scraping from lobstrio

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssetManagerAssetRecoverApi();
final accept = application/json; // String | 
final country = <string>; // String | 
final region = <string>; // String | 
final department = <string>; // String | 

try {
    final result = api_instance.makeScrapping(accept, country, region, department);
    print(result);
} catch (e) {
    print('Exception when calling AssetManagerAssetRecoverApi->makeScrapping: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [optional] 
 **country** | **String**|  | [optional] 
 **region** | **String**|  | [optional] 
 **department** | **String**|  | [optional] 

### Return type

[**List<Asset>**](Asset.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

