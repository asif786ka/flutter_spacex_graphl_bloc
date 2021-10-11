import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/launch.dart';
import '../../domain/entities/user.dart';
import '../../domain/usecases/get_launches_usecase.dart';
import '../../domain/usecases/get_users_usecase.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._getCharacter, this._getLocations)
      : super(HomeState.navigationScreenChanged(0));

  final GetCharactersUseCase _getCharacter;
  final GetLocationsUseCase _getLocations;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield HomeState.navigationScreenChanged(event.currentScreenIndex);
  }

  Future<List<Launch>> getLaunchesInPage(int offset) async {
    final page = _getPageFromOffset(offset);
    final either = await _getCharacter(LaunchesParams(page));
    return either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
  }


  Future<List<User>> getUsersInPage(int offset) async {
    final page = _getPageFromOffset(offset);
    final either = await _getLocations(UsersParams(page));
    return either.fold(
      (l) => throw _getFailureAndThrowExpection(l),
      (r) => r,
    );
  }

  int _getPageFromOffset(int offset) => offset ~/ 10 + 10;

  Exception _getFailureAndThrowExpection(Failure l) {
    if (l is ServerFailure) {
      return ServerException();
    } else if (l is CacheFailure) {
      return CacheException();
    } else {
      return UnknownException();
    }
  }
}
