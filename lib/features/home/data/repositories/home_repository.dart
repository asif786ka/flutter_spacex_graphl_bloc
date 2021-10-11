import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/launch.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../datasources/home_local_datasource.dart';
import '../datasources/home_remote_datasource.dart';
import '../models/launch_model.dart';
import '../models/user_model.dart';

@LazySingleton(as: IHomeRepository)
class HomeRepository implements IHomeRepository {
  HomeRepository(
      this._networkInfo, this._remoteDataSource, this._localDataSource);

  final IHomeLocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;
  final IHomeRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Launch>>> getLaunches(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final models = await _remoteDataSource.getLaunches(page);
        final entities = models.map<Launch>((e) => e.toEntity()).toList();
        await _localDataSource.cacheLaunches(models, page);
        return Right(entities);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final models = _localDataSource.getLastLaunches(page);
        final entities = models.map<Launch>((e) => e.toEntity()).toList();
        return Right(entities);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, List<User>>> getUsers(int page) async {
    if (await _networkInfo.isConnected) {
      try {
        final models = await _remoteDataSource.getUsers(page);
        final entities = models.map<User>((e) => e.toEntity()).toList();
        await _localDataSource.cacheUsers(models, page);
        return Right(entities);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final models = _localDataSource.getLastUsers(page);
        final entities = models.map<User>((e) => e.toEntity()).toList();
        return Right(entities);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
