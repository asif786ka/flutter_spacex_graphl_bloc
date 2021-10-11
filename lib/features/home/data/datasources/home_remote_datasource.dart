import 'package:flutterspacexlatest/core/util/spacex_query.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart' as excptn;
import '../models/launch_model.dart';
import '../models/user_model.dart';

abstract class IHomeRemoteDataSource {
  Future<List<LaunchModel>> getLaunches(int page);

  Future<List<UserModel>> getUsers(int page);

}

@LazySingleton(as: IHomeRemoteDataSource)
class HomeRemoteDataSource implements IHomeRemoteDataSource {
  HomeRemoteDataSource(this._client);

  final GraphQLClient _client;

  @override
  Future<List<LaunchModel>> getLaunches(int page) async {
    try {
      final result = await _client.query(QueryOptions(
        document: gql(SpaceXQuery.launchQuery),
        variables: {"limit": page},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data?['launchesPast']
          .map((e) => LaunchModel.fromJson(e))
          .cast<LaunchModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw excptn.ServerException();
    }
  }


  @override
  Future<List<UserModel>> getUsers(int page) async {
    try {
      final result = await _client.query(QueryOptions(
        document: gql(SpaceXQuery.usersQuery),
        variables: {"page": page},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data?['users']
          .map((e) => UserModel.fromJson(e))
          .cast<UserModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw excptn.ServerException();
    }
  }
}
