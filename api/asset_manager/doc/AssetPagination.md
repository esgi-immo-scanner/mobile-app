# asset_manager.model.AssetPagination

## Load the model package
```dart
import 'package:asset_manager/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**limit** | **int** | The maximum number of results per page. | [optional] 
**page** | **int** | The current page number. | [optional] 
**sort** | **String** | The sorting parameter used to order the results. | [optional] 
**totalRows** | **int** | The total number of rows in the result set. | [optional] 
**totalPages** | **int** | The total number of pages in the result set. | [optional] 
**data** | [**List<Asset>**](Asset.md) | An array of data elements containing the requested information. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


