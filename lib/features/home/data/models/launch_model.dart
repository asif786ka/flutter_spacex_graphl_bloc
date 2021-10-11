import 'package:flutterspacexlatest/features/home/domain/entities/links.dart';
import 'package:flutterspacexlatest/features/home/domain/entities/rocket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/launch.dart';

part 'launch_model.freezed.dart';

part 'launch_model.g.dart';

@freezed
class LaunchModel with _$LaunchModel  {
  const factory LaunchModel({
    required String mission_name,
    required String launch_date_utc,
    required Rocket rocket,
    required Links links,
  }) = _LaunchModel ;

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);

  factory LaunchModel.fromEntity(Launch character) => LaunchModel(
        mission_name: character.mission_name,
        launch_date_utc: character.launch_date_utc,
        rocket: character.rocket,
        links: character.links,
      );
}

extension LaunchModelX on LaunchModel {
  Launch toEntity() => Launch(
        mission_name: mission_name,
        launch_date_utc: launch_date_utc,
        rocket: rocket,
        links: links,
      );
}
