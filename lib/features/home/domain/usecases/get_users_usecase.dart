import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/user.dart';
import '../repositories/i_home_repository.dart';

@lazySingleton
class GetUsersUseCase extends UseCase<List<User>, UsersParams> {
  GetUsersUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<User>>> call(UsersParams params) {
    return repository.getUsers(params.page);
  }
}

class UsersParams {
  UsersParams(this.page);

  final int page;
}
