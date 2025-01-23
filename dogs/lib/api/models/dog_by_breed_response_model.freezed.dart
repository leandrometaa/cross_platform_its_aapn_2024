// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dog_by_breed_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DogByBreedResponseModel _$DogByBreedResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DogByBreedResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DogByBreedResponseModel {
  List<String> get message => throw _privateConstructorUsedError;

  /// Serializes this DogByBreedResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DogByBreedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DogByBreedResponseModelCopyWith<DogByBreedResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogByBreedResponseModelCopyWith<$Res> {
  factory $DogByBreedResponseModelCopyWith(DogByBreedResponseModel value,
          $Res Function(DogByBreedResponseModel) then) =
      _$DogByBreedResponseModelCopyWithImpl<$Res, DogByBreedResponseModel>;
  @useResult
  $Res call({List<String> message});
}

/// @nodoc
class _$DogByBreedResponseModelCopyWithImpl<$Res,
        $Val extends DogByBreedResponseModel>
    implements $DogByBreedResponseModelCopyWith<$Res> {
  _$DogByBreedResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DogByBreedResponseModel
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
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogByBreedResponseModelImplCopyWith<$Res>
    implements $DogByBreedResponseModelCopyWith<$Res> {
  factory _$$DogByBreedResponseModelImplCopyWith(
          _$DogByBreedResponseModelImpl value,
          $Res Function(_$DogByBreedResponseModelImpl) then) =
      __$$DogByBreedResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> message});
}

/// @nodoc
class __$$DogByBreedResponseModelImplCopyWithImpl<$Res>
    extends _$DogByBreedResponseModelCopyWithImpl<$Res,
        _$DogByBreedResponseModelImpl>
    implements _$$DogByBreedResponseModelImplCopyWith<$Res> {
  __$$DogByBreedResponseModelImplCopyWithImpl(
      _$DogByBreedResponseModelImpl _value,
      $Res Function(_$DogByBreedResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DogByBreedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DogByBreedResponseModelImpl(
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DogByBreedResponseModelImpl
    with DiagnosticableTreeMixin
    implements _DogByBreedResponseModel {
  const _$DogByBreedResponseModelImpl({required final List<String> message})
      : _message = message;

  factory _$DogByBreedResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DogByBreedResponseModelImplFromJson(json);

  final List<String> _message;
  @override
  List<String> get message {
    if (_message is EqualUnmodifiableListView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DogByBreedResponseModel(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DogByBreedResponseModel'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogByBreedResponseModelImpl &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  /// Create a copy of DogByBreedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DogByBreedResponseModelImplCopyWith<_$DogByBreedResponseModelImpl>
      get copyWith => __$$DogByBreedResponseModelImplCopyWithImpl<
          _$DogByBreedResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DogByBreedResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DogByBreedResponseModel implements DogByBreedResponseModel {
  const factory _DogByBreedResponseModel(
      {required final List<String> message}) = _$DogByBreedResponseModelImpl;

  factory _DogByBreedResponseModel.fromJson(Map<String, dynamic> json) =
      _$DogByBreedResponseModelImpl.fromJson;

  @override
  List<String> get message;

  /// Create a copy of DogByBreedResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DogByBreedResponseModelImplCopyWith<_$DogByBreedResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
