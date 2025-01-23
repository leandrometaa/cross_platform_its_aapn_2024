// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeds_api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreedsApiResponseModel _$BreedsApiResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BreedsApiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BreedsApiResponseModel {
  Map<String, Object?> get message => throw _privateConstructorUsedError;

  /// Serializes this BreedsApiResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BreedsApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreedsApiResponseModelCopyWith<BreedsApiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedsApiResponseModelCopyWith<$Res> {
  factory $BreedsApiResponseModelCopyWith(BreedsApiResponseModel value,
          $Res Function(BreedsApiResponseModel) then) =
      _$BreedsApiResponseModelCopyWithImpl<$Res, BreedsApiResponseModel>;
  @useResult
  $Res call({Map<String, Object?> message});
}

/// @nodoc
class _$BreedsApiResponseModelCopyWithImpl<$Res,
        $Val extends BreedsApiResponseModel>
    implements $BreedsApiResponseModelCopyWith<$Res> {
  _$BreedsApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreedsApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedsApiResponseModelImplCopyWith<$Res>
    implements $BreedsApiResponseModelCopyWith<$Res> {
  factory _$$BreedsApiResponseModelImplCopyWith(
          _$BreedsApiResponseModelImpl value,
          $Res Function(_$BreedsApiResponseModelImpl) then) =
      __$$BreedsApiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Object?> message});
}

/// @nodoc
class __$$BreedsApiResponseModelImplCopyWithImpl<$Res>
    extends _$BreedsApiResponseModelCopyWithImpl<$Res,
        _$BreedsApiResponseModelImpl>
    implements _$$BreedsApiResponseModelImplCopyWith<$Res> {
  __$$BreedsApiResponseModelImplCopyWithImpl(
      _$BreedsApiResponseModelImpl _value,
      $Res Function(_$BreedsApiResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreedsApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$BreedsApiResponseModelImpl(
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedsApiResponseModelImpl
    with DiagnosticableTreeMixin
    implements _BreedsApiResponseModel {
  const _$BreedsApiResponseModelImpl(
      {required final Map<String, Object?> message})
      : _message = message;

  factory _$BreedsApiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedsApiResponseModelImplFromJson(json);

  final Map<String, Object?> _message;
  @override
  Map<String, Object?> get message {
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_message);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BreedsApiResponseModel(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BreedsApiResponseModel'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedsApiResponseModelImpl &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  /// Create a copy of BreedsApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedsApiResponseModelImplCopyWith<_$BreedsApiResponseModelImpl>
      get copyWith => __$$BreedsApiResponseModelImplCopyWithImpl<
          _$BreedsApiResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedsApiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BreedsApiResponseModel implements BreedsApiResponseModel {
  const factory _BreedsApiResponseModel(
          {required final Map<String, Object?> message}) =
      _$BreedsApiResponseModelImpl;

  factory _BreedsApiResponseModel.fromJson(Map<String, dynamic> json) =
      _$BreedsApiResponseModelImpl.fromJson;

  @override
  Map<String, Object?> get message;

  /// Create a copy of BreedsApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedsApiResponseModelImplCopyWith<_$BreedsApiResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
