import 'package:flutterspacexlatest/features/home/domain/entities/rocket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'rocket_model.freezed.dart';
part 'rocket_model.g.dart';

@freezed
class RocketModel with _$RocketModel {
  const factory RocketModel({
    required String rocket_name,
    required String rocket_type,
  }) = _RocketModel;

  factory RocketModel.fromJson(Map<String, dynamic> json) =>
      _$RocketModelFromJson(json);

  factory RocketModel.fromEntity(Rocket character) => RocketModel(
    rocket_name: character.rocket_name,
    rocket_type: character.rocket_type,
      );
}

extension RocketModelX on RocketModel {
  Rocket toEntity() => Rocket(
    rocket_name: rocket_name,
    rocket_type: rocket_type
      );
}
