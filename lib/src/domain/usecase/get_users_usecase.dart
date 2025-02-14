import 'package:openapi/openapi.dart';
import 'package:tdd_dio_demo/src/domain/repository/user_repository.dart';

class GetUsersUseCase {
  final UserRepository _repository;

  GetUsersUseCase(this._repository);

  Future<List<User>> call() async {
    return _repository.getUsers();
  }
}