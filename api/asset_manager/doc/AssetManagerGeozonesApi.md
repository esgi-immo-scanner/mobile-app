# asset_manager.api.AssetManagerGeozonesApi

## Load the API package
```dart
import 'package:asset_manager/api.dart';
```

All URIs are relative to *http://esgi-immo-scanner.paas-loic-404.online/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**browseGeoZones**](AssetManagerGeozonesApi.md#browsegeozones) | **GET** /asset-manager/geozones/browse | browse
[**createGeoZones**](AssetManagerGeozonesApi.md#creategeozones) | **POST** /asset-manager/geozones | create


# **browseGeoZones**
> List<GeoZone> browseGeoZones(name)

browse

browse

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssetManagerGeozonesApi();
final name = name_example; // String | 

try {
    final result = api_instance.browseGeoZones(name);
    print(result);
} catch (e) {
    print('Exception when calling AssetManagerGeozonesApi->browseGeoZones: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [optional] 

### Return type

[**List<GeoZone>**](GeoZone.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGeoZones**
> createGeoZones(geoZone)

create

create

### Example
```dart
import 'package:asset_manager/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AssetManagerGeozonesApi();
final geoZone = GeoZone(); // GeoZone | 

try {
    api_instance.createGeoZones(geoZone);
} catch (e) {
    print('Exception when calling AssetManagerGeozonesApi->createGeoZones: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **geoZone** | [**GeoZone**](GeoZone.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

