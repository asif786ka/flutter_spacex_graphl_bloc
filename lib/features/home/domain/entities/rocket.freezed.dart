// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rocket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rocket _$RocketFromJson(Map<String, dynamic> json) {
  return _Rocket.fromJson(json);
}

/// @nodoc
class _$RocketTearOff {
  const _$RocketTearOff();

  _Rocket call({required String rocket_name, required String rocket_type}) {
    return _Rocket(
      rocket_name: rocket_name,
      rocket_type: rocket_type,
    );
  }

  Rocket fromJson(Map<String, Object> json) {
    return Rocket.fromJson(json);
  }
}

/// @nodoc
const $Rocket = _$RocketTearOff();

/// @nodoc
mixin _$Rocket {
// 6. list all the arguments/properties
  String get rocket_name => throw _privateConstructorUsedError;
  String get rocket_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RocketCopyWith<Rocket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocketCopyWith<$Res> {
  factory $RocketCopyWith(Rocket value, $Res Function(Rocket) then) =
      _$RocketCopyWithImpl<$Res>;
  $Res call({String rocket_name, String rocket_type});
}

/// @nodoc
class _$RocketCopyWithImpl<$Res> implements $RocketCopyWith<$Res> {
  _$RocketCopyWithImpl(this._value, this._then);

  final Rocket _value;
  // ignore: unused_field
  final $Res Function(Rocket) _then;

  @override
  $Res call({
    Object? rocket_name = freezed,
    Object? rocket_type = freezed,
  }) {
    return _then(_value.copyWith(
      rocket_name: rocket_name == freezed
          ? _value.rocket_name
          : rocket_name // ignore: cast_nullable_to_non_nullable
              as String,
      rocket_type: rocket_type == freezed
          ? _value.rocket_type
          : rocket_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RocketCopyWith<$Res> implements $RocketCopyWith<$Res> {
  factory _$RocketCopyWith(_Rocket value, $Res Function(_Rocket) then) =
      __$RocketCopyWithImpl<$Res>;
  @override
  $Res call({String rocket_name, String rocket_type});
}

/// @nodoc
class __$RocketCopyWithImpl<$Res> extends _$RocketCopyWithImpl<$Res>
    implements _$RocketCopyWith<$Res> {
  __$RocketCopyWithImpl(_Rocket _value, $Res Function(_Rocket) _then)
      : super(_value, (v) => _then(v as _Rocket));

  @override
  _Rocket get _value => super._value as _Rocket;

  @override
  $Res call({
    Object? rocket_name = freezed,
    Object? rocket_type = freezed,
  }) {
    return _then(_Rocket(
      rocket_name: rocket_name == freezed
          ? _value.rocket_name
          : rocket_name // ignore: cast_nullable_to_non_nullable
              as String,
      rocket_type: rocket_type == freezed
          ? _value.rocket_type
          : rocket_type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rocket implements _Rocket {
  _$_Rocket({required this.rocket_name, required this.rocket_type});

  factory _$_Rocket.fromJson(Map<String, dynamic> json) =>
      _$_$_RocketFromJson(json);

  @override // 6. list all the arguments/properties
  final String rocket_name;
  @override
  final String rocket_type;

  @override
  String toString() {
    return 'Rocket(rocket_name: $rocket_name, rocket_type: $rocket_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rocket &&
            (identical(other.rocket_name, rocket_name) ||
                const DeepCollectionEquality()
                    .equals(other.rocket_name, rocket_name)) &&
            (identical(other.rocket_type, rocket_type) ||
                const DeepCollectionEquality()
                    .equals(other.rocket_type, rocket_type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rocket_name) ^
      const DeepCollectionEquality().hash(rocket_type);

  @JsonKey(ignore: true)
  @override
  _$RocketCopyWith<_Rocket> get copyWith =>
      __$RocketCopyWithImpl<_Rocket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RocketToJson(this);
  }
}

abstract class _Rocket implements Rocket {
  factory _Rocket({required String rocket_name, required String rocket_type}) =
      _$_Rocket;

  factory _Rocket.fromJson(Map<String, dynamic> json) = _$_Rocket.fromJson;

  @override // 6. list all the arguments/properties
  String get rocket_name => throw _privateConstructorUsedError;
  @override
  String get rocket_type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RocketCopyWith<_Rocket> get copyWith => throw _privateConstructorUsedError;
}
