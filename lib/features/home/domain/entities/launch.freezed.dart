// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'launch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LaunchTearOff {
  const _$LaunchTearOff();

  _Launch call(
      {required String mission_name,
      required String launch_date_utc,
      required Rocket rocket,
      required Links links}) {
    return _Launch(
      mission_name: mission_name,
      launch_date_utc: launch_date_utc,
      rocket: rocket,
      links: links,
    );
  }
}

/// @nodoc
const $Launch = _$LaunchTearOff();

/// @nodoc
mixin _$Launch {
  String get mission_name => throw _privateConstructorUsedError;
  String get launch_date_utc => throw _privateConstructorUsedError;
  Rocket get rocket => throw _privateConstructorUsedError;
  Links get links => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaunchCopyWith<Launch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchCopyWith<$Res> {
  factory $LaunchCopyWith(Launch value, $Res Function(Launch) then) =
      _$LaunchCopyWithImpl<$Res>;
  $Res call(
      {String mission_name,
      String launch_date_utc,
      Rocket rocket,
      Links links});

  $RocketCopyWith<$Res> get rocket;
  $LinksCopyWith<$Res> get links;
}

/// @nodoc
class _$LaunchCopyWithImpl<$Res> implements $LaunchCopyWith<$Res> {
  _$LaunchCopyWithImpl(this._value, this._then);

  final Launch _value;
  // ignore: unused_field
  final $Res Function(Launch) _then;

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
abstract class _$LaunchCopyWith<$Res> implements $LaunchCopyWith<$Res> {
  factory _$LaunchCopyWith(_Launch value, $Res Function(_Launch) then) =
      __$LaunchCopyWithImpl<$Res>;
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
class __$LaunchCopyWithImpl<$Res> extends _$LaunchCopyWithImpl<$Res>
    implements _$LaunchCopyWith<$Res> {
  __$LaunchCopyWithImpl(_Launch _value, $Res Function(_Launch) _then)
      : super(_value, (v) => _then(v as _Launch));

  @override
  _Launch get _value => super._value as _Launch;

  @override
  $Res call({
    Object? mission_name = freezed,
    Object? launch_date_utc = freezed,
    Object? rocket = freezed,
    Object? links = freezed,
  }) {
    return _then(_Launch(
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

class _$_Launch implements _Launch {
  const _$_Launch(
      {required this.mission_name,
      required this.launch_date_utc,
      required this.rocket,
      required this.links});

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
    return 'Launch(mission_name: $mission_name, launch_date_utc: $launch_date_utc, rocket: $rocket, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Launch &&
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
  _$LaunchCopyWith<_Launch> get copyWith =>
      __$LaunchCopyWithImpl<_Launch>(this, _$identity);
}

abstract class _Launch implements Launch {
  const factory _Launch(
      {required String mission_name,
      required String launch_date_utc,
      required Rocket rocket,
      required Links links}) = _$_Launch;

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
  _$LaunchCopyWith<_Launch> get copyWith => throw _privateConstructorUsedError;
}
