import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../models/launch_model.dart';
import '../models/user_model.dart';

const String CACHED_LAUNCHES = 'CACHED_LAUNCHES';
const String CACHED_USERS = 'CACHED_USERS';

abstract class IHomeLocalDataSource {
  List<LaunchModel> getLastLaunches(int page);

  Future<void> cacheLaunches(List<LaunchModel> models, int page);

  List<UserModel> getLastUsers(int page);

  Future<void> cacheUsers(List<UserModel> models, int page);

}

@LazySingleton(as: IHomeLocalDataSource)
class HomeLocalDataSource implements IHomeLocalDataSource {
  HomeLocalDataSource(this._box);

  final Box _box;

  @override
  Future<void> cacheLaunches(List<LaunchModel> models, int page) {
    return _box.put(
      CACHED_LAUNCHES,
      json.encode(models.map((e) => e.toJson()).toList()),
    );
  }


  @override
  Future<void> cacheUsers(List<UserModel> models, int page) {
    return _box.put(
      CACHED_USERS,
      json.encode(models.map((e) => e.toJson()).toList()),
    );
  }

  @override
  List<LaunchModel> getLastLaunches(int page) {
    final modelsString = _box.get(CACHED_LAUNCHES);
    if (modelsString == null) {
      throw CacheException();
    }
    return json
        .decode(modelsString)
        .map<LaunchModel>((e) => LaunchModel.fromJson(e))
        .toList();
  }


  @override
  List<UserModel> getLastUsers(int page) {
    final modelsString = _box.get(CACHED_USERS);
    if (modelsString == null) {
      throw CacheException();
    }
    return json
        .decode(modelsString)
        .map<UserModel>((e) => UserModel.fromJson(e))
        .toList();
  }

  bool _isFirstPage(int page) => page == 1;
}
