import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:openapi/openapi.dart';
import 'package:tdd_dio_demo/src/domain/repository/user_repository.dart';
import 'package:tdd_dio_demo/src/domain/usecase/create_user_usecase.dart';
import 'package:tdd_dio_demo/src/domain/usecase/get_user_usecase.dart';

@GenerateMocks([UserRepository])
import 'user_test.mocks.dart';

void main() {
  late CreateUserUseCase createUserUseCase;
  late GetUserUseCase getUserUseCase;
  late MockUserRepository mockRepository;

  setUp(() {
    mockRepository = MockUserRepository();
    createUserUseCase = CreateUserUseCase(mockRepository);
    getUserUseCase = GetUserUseCase(mockRepository);
  });

  test('Test Case Create User', () async {
    // Arrange
    final user = User((b) => b
      ..id = '1'
      ..name = 'John Doe'
      ..createdAt = DateTime.now()
      ..avatar = 'avatar_url');
    when(mockRepository.createUser(user))
        .thenAnswer((_) async => Future<void>.value());

    // Act
    await createUserUseCase.call(user);

    // Assert
    verify(mockRepository.createUser(user)).called(1);
  });

  test('Test Case Get User', () async {
    // Arrange
    final user = User((b) => b
      ..id = '1'
      ..name = 'John Doe'
      ..createdAt = DateTime.now()
      ..avatar = 'avatar_url');
    when(mockRepository.getUser('1')).thenAnswer((_) async => user);

    // Act
    final result = await getUserUseCase.call('1');

    // Assert
    expect(result, user);
    verify(mockRepository.getUser('1')).called(1);
  });
}