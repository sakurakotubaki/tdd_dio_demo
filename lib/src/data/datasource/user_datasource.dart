import 'package:openapi/openapi.dart';

abstract interface class UserDataSource {
  Future<User> getUser(String id);
  Future<List<User>> getUsers();
  Future<void> createUser(User user);
}

class UserDatasourceImpl implements UserDataSource {
  final Openapi openapi;

  UserDatasourceImpl(this.openapi);

  @override
  Future<User> getUser(String id) async {
    final response = await openapi.getDefaultApi().getUserById(id: id);
    return response.data!;
  }

  @override
  Future<List<User>> getUsers() async {
    final response = await openapi.getDefaultApi().getUsers();
    return response.data!.map((e) => e).toList();
  }

  @override
  Future<User> createUser(User user) async {
    final response = await openapi.getDefaultApi().createUser(
      userInput: UserInput((b) => b
        ..name = user.name
        ..avatar = user.avatar
      ),
    );
    return response.data!;
  }
}