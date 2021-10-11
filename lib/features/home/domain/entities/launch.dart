import 'package:flutterspacexlatest/features/home/domain/entities/rocket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'links.dart';

part 'launch.freezed.dart';

@freezed
class Launch with _$Launch  {
  const factory Launch({
    required String mission_name,
    required String launch_date_utc,
    required Rocket rocket,
    required Links links,
  }) = _Launch;
}
