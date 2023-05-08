# asset_manager.api.DefaultApi

## Load the API package
```dart
import 'package:asset_manager/api.dart';
```

All URIs are relative to *http://localhost:3001/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assetIdentifySelled**](DefaultApi.md#assetidentifyselled) | **POST** /asset-manager/asset/identify-selled | IdentifySelled
[**makeRecoverAssetByGeoZone**](DefaultApi.md#makerecoverassetbygeozone) | **POST** /asset-manager/asset/recover | MakeRecover
[**searchAssets**](DefaultApi.md#searchassets) | **GET** /asset-manager/assets/search | Search assets


# **assetIdentifySelled**
> List<Asset> assetIdentifySelled()

IdentifySelled

Identify Selled asset by doing a comparison in scrapping result and db data

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();

try {
    final result = api_instance.assetIdentifySelled();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->assetIdentifySelled: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Asset>**](Asset.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeRecoverAssetByGeoZone**
> MakeRecoverAssetByGeoZone200Response makeRecoverAssetByGeoZone(makeRecoverAssetByGeoZoneRequest)

MakeRecover

Root command that lauch all scraping and db persist process

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final makeRecoverAssetByGeoZoneRequest = MakeRecoverAssetByGeoZoneRequest(); // MakeRecoverAssetByGeoZoneRequest | 

try {
    final result = api_instance.makeRecoverAssetByGeoZone(makeRecoverAssetByGeoZoneRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->makeRecoverAssetByGeoZone: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **makeRecoverAssetByGeoZoneRequest** | [**MakeRecoverAssetByGeoZoneRequest**](MakeRecoverAssetByGeoZoneRequest.md)|  | 

### Return type

[**MakeRecoverAssetByGeoZone200Response**](MakeRecoverAssetByGeoZone200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAssets**
> AssetPagination searchAssets(geoZone, minPrice, maxPrice, minRooms, maxRooms, minSurface, maxSurface, limit, page, sort, ids)

Search assets

Search for assets based on various criteria such as geo zone, price, rooms, and surface.

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DefaultApi();
final geoZone = geoZone_example; // String | Geo zone to search for assets
final minPrice = 1.2; // double | Minimum price for assets
final maxPrice = 1.2; // double | Maximum price for assets
final minRooms = 789; // int | Minimum number of rooms for assets
final maxRooms = 789; // int | Maximum number of rooms for assets
final minSurface = 789; // int | Minimum surface for assets
final maxSurface = 789; // int | Maximum surface for assets
final limit = 56; // int | The maximum number of items to return
final page = 56; // int | The page number to return
final sort = sort_example; // String | The sorting order
final ids = []; // List<String> | The ids of the assets to return (taking priority on other criteria)

try {
    final result = api_instance.searchAssets(geoZone, minPrice, maxPrice, minRooms, maxRooms, minSurface, maxSurface, limit, page, sort, ids);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->searchAssets: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geoZone** | **String**| Geo zone to search for assets | [optional] 
 **minPrice** | **double**| Minimum price for assets | [optional] 
 **maxPrice** | **double**| Maximum price for assets | [optional] 
 **minRooms** | **int**| Minimum number of rooms for assets | [optional] 
 **maxRooms** | **int**| Maximum number of rooms for assets | [optional] 
 **minSurface** | **int**| Minimum surface for assets | [optional] 
 **maxSurface** | **int**| Maximum surface for assets | [optional] 
 **limit** | **int**| The maximum number of items to return | [optional] [default to 10]
 **page** | **int**| The page number to return | [optional] [default to 1]
 **sort** | **String**| The sorting order | [optional] [default to 'Id desc']
 **ids** | [**List<String>**](String.md)| The ids of the assets to return (taking priority on other criteria) | [optional] [default to const []]

### Return type

[**AssetPagination**](AssetPagination.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

