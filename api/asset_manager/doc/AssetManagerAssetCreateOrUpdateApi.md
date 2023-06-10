# asset_manager.api.AssetManagerAssetCreateOrUpdateApi

## Load the API package
```dart
import 'package:asset_manager/api.dart';
```

All URIs are relative to *https://immo-scanner.enzofoucaud.fr/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetCreateOrUpdate**](AssetManagerAssetCreateOrUpdateApi.md#assetcreateorupdate) | **POST** /asset-manager/asset/save | CreateOrUpdate


# **assetCreateOrUpdate**
> AssetCreateOrUpdate200Response assetCreateOrUpdate(asset)

CreateOrUpdate

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssetManagerAssetCreateOrUpdateApi();
final asset = [List<Asset>()]; // List<Asset> | 

try {
    final result = api_instance.assetCreateOrUpdate(asset);
    print(result);
} catch (e) {
    print('Exception when calling AssetManagerAssetCreateOrUpdateApi->assetCreateOrUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **asset** | [**List<Asset>**](Asset.md)|  | [optional] 

### Return type

[**AssetCreateOrUpdate200Response**](AssetCreateOrUpdate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

