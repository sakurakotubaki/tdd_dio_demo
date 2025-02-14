import 'package:openapi/openapi.dart';
import 'package:tdd_dio_demo/src/data/datasource/user_datasource.dart';

abstract interface class UserRepository {
  Future<User> getUser(String id);
  Future<List<User>> getUsers();
  Future<void> createUser(User user);
}

class UserRepositoryImpl implements UserRepository {

  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<User> getUser(String id) async {
    return userDataSource.getUser(id);
  }

  @override
  Future<List<User>> getUsers() async {
    return userDataSource.getUsers();
  }

  @override
  Future<void> createUser(User user) async {
    return userDataSource.createUser(user);
  }
}