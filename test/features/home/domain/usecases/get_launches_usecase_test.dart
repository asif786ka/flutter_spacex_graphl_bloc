import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterspacexlatest/features/home/data/models/launch_model.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/launch.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/links.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/rocket.dart';
import 'package:flutterspacexlatest/features/home/domain/repositories/i_home_repository.dart';
import 'package:flutterspacexlatest/features/home/domain/usecases/get_launches_usecase.dart';
import 'package:mocktail/mocktail.dart';


class MockHomeRepository extends Mock implements IHomeRepository {}

void main() {
  late MockHomeRepository mockRepository;
  late GetLaunchesUseCase usecase;

  setUp(() {
    mockRepository = MockHomeRepository();
    usecase = GetLaunchesUseCase(mockRepository);
  });
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
  final tLaunchModel = [
    Launch(
        mission_name: "Starlink-15 (v1.0)",
        launch_date_utc: "2020-12-06T16:17:00.000Z",
        rocket: rocket,
        links: links
    )
  ];

  test('should return list of launches when requested with offset', () async {
    // arrange
    when(() => mockRepository.getLaunches(tPage))
        .thenAnswer((_) async => await Right(tLaunchModel));
    // act
    final result = await usecase(LaunchesParams(tPage));
    // assert
    expect(result, equals(Right(tLaunchModel)));
  });
}
