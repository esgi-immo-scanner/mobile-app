# asset_manager.api.AssetManagerAssetApi

## Load the API package
```dart
import 'package:asset_manager/api.dart';
```

All URIs are relative to *http://esgi-immo-scanner.paas-loic-404.online/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetFind**](AssetManagerAssetApi.md#assetfind) | **GET** /asset-manager/asset | FindAsset


# **assetFind**
> List<Asset> assetFind(id)

FindAsset

find

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssetManagerAssetApi();
final id = <string>; // String | 

try {
    final result = api_instance.assetFind(id);
    print(result);
} catch (e) {
    print('Exception when calling AssetManagerAssetApi->assetFind: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 

### Return type

[**List<Asset>**](Asset.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

