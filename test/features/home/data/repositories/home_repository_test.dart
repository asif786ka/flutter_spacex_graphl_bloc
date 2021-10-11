import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterspacexlatest/core/error/exceptions.dart';
import 'package:flutterspacexlatest/core/error/failures.dart';
import 'package:flutterspacexlatest/core/network/network_info.dart';
import 'package:flutterspacexlatest/features/home/data/datasources/home_local_datasource.dart';
import 'package:flutterspacexlatest/features/home/data/datasources/home_remote_datasource.dart';
import 'package:flutterspacexlatest/features/home/data/models/launch_model.dart';
import 'package:flutterspacexlatest/features/home/data/repositories/home_repository.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/launch.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/links.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/rocket.dart';
import 'package:mocktail/mocktail.dart';


class MockHomeRemoteDataSource extends Mock implements IHomeRemoteDataSource {}

class MockHomeLocalDataSource extends Mock implements IHomeLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late MockHomeLocalDataSource mockLocalDataSource;
  late MockHomeRemoteDataSource mockRemoteDataSource;
  late MockNetworkInfo mockNetworkInfo;
  late HomeRepository repository;

  setUp(() {
    mockLocalDataSource = MockHomeLocalDataSource();
    mockRemoteDataSource = MockHomeRemoteDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = HomeRepository(
      mockNetworkInfo,
      mockRemoteDataSource,
      mockLocalDataSource,
    );
  });

  void runTestsOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      });

      body();
    });
  }

  void runTestsOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => false);
      });

      body();
    });
  }

  group('getCharacters', () {
    final tPage = 1;

    final rocket = Rocket(rocket_name: "Falcon 9", rocket_type: "FT");
    final links = Links(flickr_images: [
      "https://live.staticflickr.com/65535/50630802488_8cc373728e_o.jpg",
      "https://live.staticflickr.com/65535/50631642722_3af8131c6f_o.jpg",
      "https://live.staticflickr.com/65535/50631544171_66bd43eaa9_o.jpg",
      "https://live.staticflickr.com/65535/50631543966_e8035d5cca_o.jpg",
      "https://live.staticflickr.com/65535/50631643257_c214ceee7b_o.jpg",
      "https://live.staticflickr.com/65535/50631643917_cb7db291d0_o.jpg"
    ]);
    final tLaunchModels = [
      LaunchModel(
        mission_name: "Starlink-15 (v1.0)",
        launch_date_utc: "2020-12-06T16:17:00.000Z",
        rocket: rocket,
        links: links
      )
    ];

    test('should check if the device is online', () async {
      // arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDataSource.getLaunches(tPage))
          .thenAnswer((_) async => await tLaunchModels);
      when(() => mockLocalDataSource.cacheLaunches(any(), any()))
          .thenAnswer((_) async => null);
      // act
      await repository.getLaunches(tPage);
      // assert
      verify(() => mockNetworkInfo.isConnected);
    });

    runTestsOnline(() {
      test('should get launches when page number is passed', () async {
        // arrange
        when(() => mockRemoteDataSource.getLaunches(tPage))
            .thenAnswer((_) async => await tLaunchModels);
        when(() => mockLocalDataSource.cacheLaunches(any(), any()))
            .thenAnswer((_) async => null);
        // act
        final result = await repository.getLaunches(tPage);
        // assert
        expect(result, isA<Right<Failure, List<Launch>>>());
      });

      test('should cache launches when remote data is recieved', () async {
        // arrange
        when(() => mockRemoteDataSource.getLaunches(tPage))
            .thenAnswer((_) async => await tLaunchModels);
        when(() => mockLocalDataSource.cacheLaunches(any(), any()))
            .thenAnswer((_) async => null);
        // act
        await repository.getLaunches(tPage);
        // assert
        verify(() => mockRemoteDataSource.getLaunches(tPage));
        verify(
            () => mockLocalDataSource.cacheLaunches(tLaunchModels, tPage));
      });

      test('should return failure when there is an exception', () async {
        // arrange
        when(() => mockRemoteDataSource.getLaunches(tPage))
            .thenThrow(ServerException());
        // act
        final result = await repository.getLaunches(tPage);
        // assert
        verify(() => mockRemoteDataSource.getLaunches(tPage));
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, isA<Left<Failure, List<Launch>>>());
      });
    });

    runTestsOffline(() {
      test('should return cached data when cache is hit', () async {
        // arrange
        when(() => mockLocalDataSource.getLastLaunches(tPage))
            .thenReturn(tLaunchModels);
        // act
        final result = await repository.getLaunches(tPage);
        // assert
        expect(result, isA<Right<Failure, List<Launch>>>());
      });

      test('should return cache failure when cache is miss', () async {
        // arrange
        when(() => mockLocalDataSource.getLastLaunches(tPage))
            .thenThrow(CacheException());
        // act
        final result = await repository.getLaunches(tPage);
        // assert
        expect(result, isA<Left<Failure, List<Launch>>>());
      });
    });
  });
}
