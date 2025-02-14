import 'package:openapi/openapi.dart';
import 'package:tdd_dio_demo/src/domain/repository/user_repository.dart';

class CreateUserUseCase {
  final UserRepository _repository;

  CreateUserUseCase(this._repository);

  Future<void> call(User user) async {
    return _repository.createUser(user);
  }
}