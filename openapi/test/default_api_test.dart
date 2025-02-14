import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Create a new user
    //
    //Future<User> createUser(UserInput userInput) async
    test('test createUser', () async {
      // TODO
    });

    // Get user by ID
    //
    //Future<User> getUserById(String id) async
    test('test getUserById', () async {
      // TODO
    });

    // Get all users
    //
    //Future<BuiltList<User>> getUsers() async
    test('test getUsers', () async {
      // TODO
    });
  });
}
