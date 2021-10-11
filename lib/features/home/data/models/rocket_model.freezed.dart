// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'rocket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RocketModel _$RocketModelFromJson(Map<String, dynamic> json) {
  return _RocketModel.fromJson(json);
}

/// @nodoc
class _$RocketModelTearOff {
  const _$RocketModelTearOff();

  _RocketModel call(
      {required String rocket_name, required String rocket_type}) {
    return _RocketModel(
      rocket_name: rocket_name,
      rocket_type: rocket_type,
    );
  }

  RocketModel fromJson(Map<String, Object> json) {
    return RocketModel.fromJson(json);
  }
}

/// @nodoc
const $RocketModel = _$RocketModelTearOff();

/// @nodoc
mixin _$RocketModel {
  String get rocket_name => throw _privateConstructorUsedError;
  String get rocket_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RocketModelCopyWith<RocketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RocketModelCopyWith<$Res> {
  factory $RocketModelCopyWith(
          RocketModel value, $Res Function(RocketModel) then) =
      _$RocketModelCopyWithImpl<$Res>;
  $Res call({String rocket_name, String rocket_type});
}

/// @nodoc
class _$RocketModelCopyWithImpl<$Res> implements $RocketModelCopyWith<$Res> {
  _$RocketModelCopyWithImpl(this._value, this._then);

  final RocketModel _value;
  // ignore: unused_field
  final $Res Function(RocketModel) _then;

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
abstract class _$RocketModelCopyWith<$Res>
    implements $RocketModelCopyWith<$Res> {
  factory _$RocketModelCopyWith(
          _RocketModel value, $Res Function(_RocketModel) then) =
      __$RocketModelCopyWithImpl<$Res>;
  @override
  $Res call({String rocket_name, String rocket_type});
}

/// @nodoc
class __$RocketModelCopyWithImpl<$Res> extends _$RocketModelCopyWithImpl<$Res>
    implements _$RocketModelCopyWith<$Res> {
  __$RocketModelCopyWithImpl(
      _RocketModel _value, $Res Function(_RocketModel) _then)
      : super(_value, (v) => _then(v as _RocketModel));

  @override
  _RocketModel get _value => super._value as _RocketModel;

  @override
  $Res call({
    Object? rocket_name = freezed,
    Object? rocket_type = freezed,
  }) {
    return _then(_RocketModel(
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
class _$_RocketModel implements _RocketModel {
  const _$_RocketModel({required this.rocket_name, required this.rocket_type});

  factory _$_RocketModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RocketModelFromJson(json);

  @override
  final String rocket_name;
  @override
  final String rocket_type;

  @override
  String toString() {
    return 'RocketModel(rocket_name: $rocket_name, rocket_type: $rocket_type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RocketModel &&
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
  _$RocketModelCopyWith<_RocketModel> get copyWith =>
      __$RocketModelCopyWithImpl<_RocketModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RocketModelToJson(this);
  }
}

abstract class _RocketModel implements RocketModel {
  const factory _RocketModel(
      {required String rocket_name,
      required String rocket_type}) = _$_RocketModel;

  factory _RocketModel.fromJson(Map<String, dynamic> json) =
      _$_RocketModel.fromJson;

  @override
  String get rocket_name => throw _privateConstructorUsedError;
  @override
  String get rocket_type => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RocketModelCopyWith<_RocketModel> get copyWith =>
      throw _privateConstructorUsedError;
}
