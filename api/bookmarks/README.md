# bookmarks
Manager Bookmarks
Repo: [https://github.com/esgi-immo-scanner](https://github.com/esgi-immo-scanner/)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  bookmarks:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  bookmarks:
    path: /path/to/bookmarks
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3003/api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*FavoritesApi* | [**makeBookmark**](doc//FavoritesApi.md#makebookmark) | **POST** /bookmarks/make | Add a bookmark
*FavoritesApi* | [**userBookmarks**](doc//FavoritesApi.md#userbookmarks) | **GET** /bookmarks | Get user's logged in bookmarks


## Documentation For Models

 - [Bookmark](doc//Bookmark.md)
 - [BookmarkRequest](doc//BookmarkRequest.md)


## Documentation For Authorization


## bearerAuth

- **Type**: HTTP Bearer authentication


## Author


