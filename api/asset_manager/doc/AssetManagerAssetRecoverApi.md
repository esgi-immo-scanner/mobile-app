# asset_manager.api.AssetManagerAssetRecoverApi

## Load the API package
```dart
import 'package:asset_manager/api.dart';
```

All URIs are relative to *http://esgi-immo-scanner.paas-loic-404.online/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**makeRecoverAssetsByGeoZone**](AssetManagerAssetRecoverApi.md#makerecoverassetsbygeozone) | **POST** /asset-manager/asset/recover | Make Scrapping


# **makeRecoverAssetsByGeoZone**
> List<Asset> makeRecoverAssetsByGeoZone(makeRecoverAssetsByGeoZoneRequest)

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
final makeRecoverAssetsByGeoZoneRequest = MakeRecoverAssetsByGeoZoneRequest(); // MakeRecoverAssetsByGeoZoneRequest | 

try {
    final result = api_instance.makeRecoverAssetsByGeoZone(makeRecoverAssetsByGeoZoneRequest);
    print(result);
} catch (e) {
    print('Exception when calling AssetManagerAssetRecoverApi->makeRecoverAssetsByGeoZone: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **makeRecoverAssetsByGeoZoneRequest** | [**MakeRecoverAssetsByGeoZoneRequest**](MakeRecoverAssetsByGeoZoneRequest.md)|  | 

### Return type

[**List<Asset>**](Asset.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

