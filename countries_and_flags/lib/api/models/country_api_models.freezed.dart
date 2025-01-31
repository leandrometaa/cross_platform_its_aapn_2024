// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_api_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryApiModels _$CountryApiModelsFromJson(Map<String, dynamic> json) {
  return _CountryApiModels.fromJson(json);
}

/// @nodoc
mixin _$CountryApiModels {
  String get common => throw _privateConstructorUsedError;

  /// Serializes this CountryApiModels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryApiModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryApiModelsCopyWith<CountryApiModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryApiModelsCopyWith<$Res> {
  factory $CountryApiModelsCopyWith(
          CountryApiModels value, $Res Function(CountryApiModels) then) =
      _$CountryApiModelsCopyWithImpl<$Res, CountryApiModels>;
  @useResult
  $Res call({String common});
}

/// @nodoc
class _$CountryApiModelsCopyWithImpl<$Res, $Val extends CountryApiModels>
    implements $CountryApiModelsCopyWith<$Res> {
  _$CountryApiModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryApiModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryApiModelsImplCopyWith<$Res>
    implements $CountryApiModelsCopyWith<$Res> {
  factory _$$CountryApiModelsImplCopyWith(_$CountryApiModelsImpl value,
          $Res Function(_$CountryApiModelsImpl) then) =
      __$$CountryApiModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String common});
}

/// @nodoc
class __$$CountryApiModelsImplCopyWithImpl<$Res>
    extends _$CountryApiModelsCopyWithImpl<$Res, _$CountryApiModelsImpl>
    implements _$$CountryApiModelsImplCopyWith<$Res> {
  __$$CountryApiModelsImplCopyWithImpl(_$CountryApiModelsImpl _value,
      $Res Function(_$CountryApiModelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryApiModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
  }) {
    return _then(_$CountryApiModelsImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryApiModelsImpl implements _CountryApiModels {
  const _$CountryApiModelsImpl({required this.common});

  factory _$CountryApiModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryApiModelsImplFromJson(json);

  @override
  final String common;

  @override
  String toString() {
    return 'CountryApiModels(common: $common)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryApiModelsImpl &&
            (identical(other.common, common) || other.common == common));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common);

  /// Create a copy of CountryApiModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryApiModelsImplCopyWith<_$CountryApiModelsImpl> get copyWith =>
      __$$CountryApiModelsImplCopyWithImpl<_$CountryApiModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryApiModelsImplToJson(
      this,
    );
  }
}

abstract class _CountryApiModels implements CountryApiModels {
  const factory _CountryApiModels({required final String common}) =
      _$CountryApiModelsImpl;

  factory _CountryApiModels.fromJson(Map<String, dynamic> json) =
      _$CountryApiModelsImpl.fromJson;

  @override
  String get common;

  /// Create a copy of CountryApiModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryApiModelsImplCopyWith<_$CountryApiModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
