// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchModel _$_$_LaunchModelFromJson(Map<String, dynamic> json) {
  return _$_LaunchModel(
    mission_name: json['mission_name'] as String,
    launch_date_utc: json['launch_date_utc'] as String,
    rocket: Rocket.fromJson(json['rocket'] as Map<String, dynamic>),
    links: Links.fromJson(json['links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_LaunchModelToJson(_$_LaunchModel instance) =>
    <String, dynamic>{
      'mission_name': instance.mission_name,
      'launch_date_utc': instance.launch_date_utc,
      'rocket': instance.rocket,
      'links': instance.links,
    };
