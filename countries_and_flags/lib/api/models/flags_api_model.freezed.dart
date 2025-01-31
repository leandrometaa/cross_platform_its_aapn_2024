// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flags_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlagsApiModels _$FlagsApiModelsFromJson(Map<String, dynamic> json) {
  return _FlagsApiModels.fromJson(json);
}

/// @nodoc
mixin _$FlagsApiModels {
  String get png => throw _privateConstructorUsedError;

  /// Serializes this FlagsApiModels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlagsApiModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlagsApiModelsCopyWith<FlagsApiModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsApiModelsCopyWith<$Res> {
  factory $FlagsApiModelsCopyWith(
          FlagsApiModels value, $Res Function(FlagsApiModels) then) =
      _$FlagsApiModelsCopyWithImpl<$Res, FlagsApiModels>;
  @useResult
  $Res call({String png});
}

/// @nodoc
class _$FlagsApiModelsCopyWithImpl<$Res, $Val extends FlagsApiModels>
    implements $FlagsApiModelsCopyWith<$Res> {
  _$FlagsApiModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlagsApiModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
  }) {
    return _then(_value.copyWith(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagsApiModelsImplCopyWith<$Res>
    implements $FlagsApiModelsCopyWith<$Res> {
  factory _$$FlagsApiModelsImplCopyWith(_$FlagsApiModelsImpl value,
          $Res Function(_$FlagsApiModelsImpl) then) =
      __$$FlagsApiModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String png});
}

/// @nodoc
class __$$FlagsApiModelsImplCopyWithImpl<$Res>
    extends _$FlagsApiModelsCopyWithImpl<$Res, _$FlagsApiModelsImpl>
    implements _$$FlagsApiModelsImplCopyWith<$Res> {
  __$$FlagsApiModelsImplCopyWithImpl(
      _$FlagsApiModelsImpl _value, $Res Function(_$FlagsApiModelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlagsApiModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
  }) {
    return _then(_$FlagsApiModelsImpl(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagsApiModelsImpl implements _FlagsApiModels {
  const _$FlagsApiModelsImpl({required this.png});

  factory _$FlagsApiModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagsApiModelsImplFromJson(json);

  @override
  final String png;

  @override
  String toString() {
    return 'FlagsApiModels(png: $png)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagsApiModelsImpl &&
            (identical(other.png, png) || other.png == png));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, png);

  /// Create a copy of FlagsApiModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagsApiModelsImplCopyWith<_$FlagsApiModelsImpl> get copyWith =>
      __$$FlagsApiModelsImplCopyWithImpl<_$FlagsApiModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagsApiModelsImplToJson(
      this,
    );
  }
}

abstract class _FlagsApiModels implements FlagsApiModels {
  const factory _FlagsApiModels({required final String png}) =
      _$FlagsApiModelsImpl;

  factory _FlagsApiModels.fromJson(Map<String, dynamic> json) =
      _$FlagsApiModelsImpl.fromJson;

  @override
  String get png;

  /// Create a copy of FlagsApiModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlagsApiModelsImplCopyWith<_$FlagsApiModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
