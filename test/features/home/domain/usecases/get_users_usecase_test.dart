import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/user.dart';
import 'package:flutterspacexlatest/features/home/domain/repositories/i_home_repository.dart';
import 'package:flutterspacexlatest/features/home/domain/usecases/get_users_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements IHomeRepository {}

void main() {
  late MockHomeRepository mockRepository;
  late GetUsersUseCase usecase;

  setUp(() {
    mockRepository = MockHomeRepository();
    usecase = GetUsersUseCase(mockRepository);
  });

  final tPage = 1;
  final tUsers = [
    User(
      id: "123",
      name : "astra 123 name",
      rocket: "rocket 123 name"
    )
  ];

  test('should return list of users when requested with offset', () async {
    // arrange
    when(() => mockRepository.getUsers(tPage))
        .thenAnswer((_) async => await Right(tUsers));
    // act
    final result = await usecase(UsersParams(tPage));
    // assert
    expect(result, equals(Right(tUsers)));
  });
}
