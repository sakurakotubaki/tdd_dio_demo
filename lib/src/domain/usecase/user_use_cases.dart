import 'package:tdd_dio_demo/src/domain/usecase/create_user_usecase.dart';
import 'package:tdd_dio_demo/src/domain/usecase/get_user_usecase.dart';
import 'package:tdd_dio_demo/src/domain/repository/user_repository.dart';
import '';


class UserUseCases {
  final CreateUserUseCase createUser;
  final GetUserUseCase getUser;

  UserUseCases({
    required this.createUser,
    required this.getUser,
  });

  factory UserUseCases.fromRepository(UserRepository repository) {
    return UserUseCases(
      createUser: CreateUserUseCase(repository),
      getUser: GetUserUseCase(repository),
    );
  }
}