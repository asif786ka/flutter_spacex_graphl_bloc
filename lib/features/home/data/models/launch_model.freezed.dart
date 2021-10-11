// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'launch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) {
  return _LaunchModel.fromJson(json);
}

/// @nodoc
class _$LaunchModelTearOff {
  const _$LaunchModelTearOff();

  _LaunchModel call(
      {required String mission_name,
      required String launch_date_utc,
      required Rocket rocket,
      required Links links}) {
    return _LaunchModel(
      mission_name: mission_name,
      launch_date_utc: launch_date_utc,
      rocket: rocket,
      links: links,
    );
  }

  LaunchModel fromJson(Map<String, Object> json) {
    return LaunchModel.fromJson(json);
  }
}

/// @nodoc
const $LaunchModel = _$LaunchModelTearOff();

/// @nodoc
mixin _$LaunchModel {
  String get mission_name => throw _privateConstructorUsedError;
  String get launch_date_utc => throw _privateConstructorUsedError;
  Rocket get rocket => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchModelCopyWith<LaunchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchModelCopyWith<$Res> {
  factory $LaunchModelCopyWith(
          LaunchModel value, $Res Function(LaunchModel) then) =
      _$LaunchModelCopyWithImpl<$Res>;
  $Res call(
      {String mission_name,
      String launch_date_utc,
      Rocket rocket,
      Links links});

  $RocketCopyWith<$Res> get rocket;
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$LaunchModelCopyWithImpl<$Res> implements $LaunchModelCopyWith<$Res> {
  _$LaunchModelCopyWithImpl(this._value, this._then);

  final LaunchModel _value;
  // ignore: unused_field
  final $Res Function(LaunchModel) _then;

  @override
  $Res call({
    Object? mission_name = freezed,
    Object? launch_date_utc = freezed,
    Object? rocket = freezed,
    Object? links = freezed,
  }) {
    return _then(_value.copyWith(
      mission_name: mission_name == freezed
          ? _value.mission_name
          : mission_name // ignore: cast_nullable_to_non_nullable
              as String,
      launch_date_utc: launch_date_utc == freezed
          ? _value.launch_date_utc
          : launch_date_utc // ignore: cast_nullable_to_non_nullable
              as String,
      rocket: rocket == freezed
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as Rocket,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ));
  }

  @override
  $RocketCopyWith<$Res> get rocket {
    return $RocketCopyWith<$Res>(_value.rocket, (value) {
      return _then(_value.copyWith(rocket: value));
    });
  }

  @override
  $LinksCopyWith<$Res> get links {
    return $LinksCopyWith<$Res>(_value.links, (value) {
      return _then(_value.copyWith(links: value));
    });
  }
}

/// @nodoc
abstract class _$LaunchModelCopyWith<$Res>
    implements $LaunchModelCopyWith<$Res> {
  factory _$LaunchModelCopyWith(
          _LaunchModel value, $Res Function(_LaunchModel) then) =
      __$LaunchModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String mission_name,
      String launch_date_utc,
      Rocket rocket,
      Links links});

  @override
  $RocketCopyWith<$Res> get rocket;
  @override
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class __$LaunchModelCopyWithImpl<$Res> extends _$LaunchModelCopyWithImpl<$Res>
    implements _$LaunchModelCopyWith<$Res> {
  __$LaunchModelCopyWithImpl(
      _LaunchModel _value, $Res Function(_LaunchModel) _then)
      : super(_value, (v) => _then(v as _LaunchModel));

  @override
  _LaunchModel get _value => super._value as _LaunchModel;

  @override
  $Res call({
    Object? mission_name = freezed,
    Object? launch_date_utc = freezed,
    Object? rocket = freezed,
    Object? links = freezed,
  }) {
    return _then(_LaunchModel(
      mission_name: mission_name == freezed
          ? _value.mission_name
          : mission_name // ignore: cast_nullable_to_non_nullable
              as String,
      launch_date_utc: launch_date_utc == freezed
          ? _value.launch_date_utc
          : launch_date_utc // ignore: cast_nullable_to_non_nullable
              as String,
      rocket: rocket == freezed
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as Rocket,
      links: links == freezed
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LaunchModel implements _LaunchModel {
  const _$_LaunchModel(
      {required this.mission_name,
      required this.launch_date_utc,
      required this.rocket,
      required this.links});

  factory _$_LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$_$_LaunchModelFromJson(json);

  @override
  final String mission_name;
  @override
  final String launch_date_utc;
  @override
  final Rocket rocket;
  @override
  final Links links;

  @override
  String toString() {
    return 'LaunchModel(mission_name: $mission_name, launch_date_utc: $launch_date_utc, rocket: $rocket, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LaunchModel &&
            (identical(other.mission_name, mission_name) ||
                const DeepCollectionEquality()
                    .equals(other.mission_name, mission_name)) &&
            (identical(other.launch_date_utc, launch_date_utc) ||
                const DeepCollectionEquality()
                    .equals(other.launch_date_utc, launch_date_utc)) &&
            (identical(other.rocket, rocket) ||
                const DeepCollectionEquality().equals(other.rocket, rocket)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mission_name) ^
      const DeepCollectionEquality().hash(launch_date_utc) ^
      const DeepCollectionEquality().hash(rocket) ^
      const DeepCollectionEquality().hash(links);

  @JsonKey(ignore: true)
  @override
  _$LaunchModelCopyWith<_LaunchModel> get copyWith =>
      __$LaunchModelCopyWithImpl<_LaunchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LaunchModelToJson(this);
  }
}

abstract class _LaunchModel implements LaunchModel {
  const factory _LaunchModel(
      {required String mission_name,
      required String launch_date_utc,
      required Rocket rocket,
      required Links links}) = _$_LaunchModel;

  factory _LaunchModel.fromJson(Map<String, dynamic> json) =
      _$_LaunchModel.fromJson;

  @override
  String get mission_name => throw _privateConstructorUsedError;
  @override
  String get launch_date_utc => throw _privateConstructorUsedError;
  @override
  Rocket get rocket => throw _privateConstructorUsedError;
  @override
  Links get links => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LaunchModelCopyWith<_LaunchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
