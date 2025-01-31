// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flags_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlagsResponse {
  CountryApiModels? get country => throw _privateConstructorUsedError;
  FlagsApiModels get flags => throw _privateConstructorUsedError;

  /// Create a copy of FlagsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlagsResponseCopyWith<FlagsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagsResponseCopyWith<$Res> {
  factory $FlagsResponseCopyWith(
          FlagsResponse value, $Res Function(FlagsResponse) then) =
      _$FlagsResponseCopyWithImpl<$Res, FlagsResponse>;
  @useResult
  $Res call({CountryApiModels? country, FlagsApiModels flags});

  $CountryApiModelsCopyWith<$Res>? get country;
  $FlagsApiModelsCopyWith<$Res> get flags;
}

/// @nodoc
class _$FlagsResponseCopyWithImpl<$Res, $Val extends FlagsResponse>
    implements $FlagsResponseCopyWith<$Res> {
  _$FlagsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlagsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? flags = null,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryApiModels?,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as FlagsApiModels,
    ) as $Val);
  }

  /// Create a copy of FlagsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryApiModelsCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CountryApiModelsCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }

  /// Create a copy of FlagsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlagsApiModelsCopyWith<$Res> get flags {
    return $FlagsApiModelsCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlagsResponseImplCopyWith<$Res>
    implements $FlagsResponseCopyWith<$Res> {
  factory _$$FlagsResponseImplCopyWith(
          _$FlagsResponseImpl value, $Res Function(_$FlagsResponseImpl) then) =
      __$$FlagsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountryApiModels? country, FlagsApiModels flags});

  @override
  $CountryApiModelsCopyWith<$Res>? get country;
  @override
  $FlagsApiModelsCopyWith<$Res> get flags;
}

/// @nodoc
class __$$FlagsResponseImplCopyWithImpl<$Res>
    extends _$FlagsResponseCopyWithImpl<$Res, _$FlagsResponseImpl>
    implements _$$FlagsResponseImplCopyWith<$Res> {
  __$$FlagsResponseImplCopyWithImpl(
      _$FlagsResponseImpl _value, $Res Function(_$FlagsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlagsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? flags = null,
  }) {
    return _then(_$FlagsResponseImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryApiModels?,
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as FlagsApiModels,
    ));
  }
}

/// @nodoc

class _$FlagsResponseImpl implements _FlagsResponse {
  const _$FlagsResponseImpl({this.country, required this.flags});

  @override
  final CountryApiModels? country;
  @override
  final FlagsApiModels flags;

  @override
  String toString() {
    return 'FlagsResponse(country: $country, flags: $flags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagsResponseImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.flags, flags) || other.flags == flags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, flags);

  /// Create a copy of FlagsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagsResponseImplCopyWith<_$FlagsResponseImpl> get copyWith =>
      __$$FlagsResponseImplCopyWithImpl<_$FlagsResponseImpl>(this, _$identity);
}

abstract class _FlagsResponse implements FlagsResponse {
  const factory _FlagsResponse(
      {final CountryApiModels? country,
      required final FlagsApiModels flags}) = _$FlagsResponseImpl;

  @override
  CountryApiModels? get country;
  @override
  FlagsApiModels get flags;

  /// Create a copy of FlagsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlagsResponseImplCopyWith<_$FlagsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
