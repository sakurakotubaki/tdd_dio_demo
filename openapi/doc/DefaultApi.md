# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://67adef339e85da2f020bc5ea.mockapi.io/test-api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](DefaultApi.md#createuser) | **POST** /users | Create a new user
[**getUserById**](DefaultApi.md#getuserbyid) | **GET** /users/{id} | Get user by ID
[**getUsers**](DefaultApi.md#getusers) | **GET** /users | Get all users


# **createUser**
> User createUser(userInput)

Create a new user

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final UserInput userInput = ; // UserInput | 

try {
    final response = api.createUser(userInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userInput** | [**UserInput**](UserInput.md)|  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> User getUserById(id)

Get user by ID

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String id = id_example; // String | User ID

try {
    final response = api.getUserById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getUserById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> BuiltList<User> getUsers()

Get all users

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();

try {
    final response = api.getUsers();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->getUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;User&gt;**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

