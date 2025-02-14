import 'package:openapi/openapi.dart';
import 'package:tdd_dio_demo/src/domain/repository/user_repository.dart';

class GetUserUseCase {
  final UserRepository _repository;

  GetUserUseCase(this._repository);

  Future<User> call(String id) async {
    return _repository.getUser(id);
  }
}