import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/launch.dart';
import '../entities/user.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<Launch>>> getLaunches(int page);

  Future<Either<Failure, List<User>>> getUsers(int page);
}
