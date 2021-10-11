import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/launch.dart';
import '../repositories/i_home_repository.dart';

@lazySingleton
class GetLaunchesUseCase extends UseCase<List<Launch>, LaunchesParams> {
  GetLaunchesUseCase(this.repository);

  final IHomeRepository repository;

  @override
  Future<Either<Failure, List<Launch>>> call(LaunchesParams params) {
    return repository.getLaunches(params.page);
  }
}

class LaunchesParams {
  LaunchesParams(this.page);

  final int page;
}
