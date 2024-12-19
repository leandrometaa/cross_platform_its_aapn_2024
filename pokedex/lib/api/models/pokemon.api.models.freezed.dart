// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.api.models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonApiModels _$PokemonApiModelsFromJson(Map<String, dynamic> json) {
  return _PokemonApiModels.fromJson(json);
}

/// @nodoc
mixin _$PokemonApiModels {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  /// Serializes this PokemonApiModels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonApiModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonApiModelsCopyWith<PokemonApiModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonApiModelsCopyWith<$Res> {
  factory $PokemonApiModelsCopyWith(
          PokemonApiModels value, $Res Function(PokemonApiModels) then) =
      _$PokemonApiModelsCopyWithImpl<$Res, PokemonApiModels>;
  @useResult
  $Res call({int id, String name, String imageUrl, int height, int weight});
}

/// @nodoc
class _$PokemonApiModelsCopyWithImpl<$Res, $Val extends PokemonApiModels>
    implements $PokemonApiModelsCopyWith<$Res> {
  _$PokemonApiModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonApiModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonApiModelsImplCopyWith<$Res>
    implements $PokemonApiModelsCopyWith<$Res> {
  factory _$$PokemonApiModelsImplCopyWith(_$PokemonApiModelsImpl value,
          $Res Function(_$PokemonApiModelsImpl) then) =
      __$$PokemonApiModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String imageUrl, int height, int weight});
}

/// @nodoc
class __$$PokemonApiModelsImplCopyWithImpl<$Res>
    extends _$PokemonApiModelsCopyWithImpl<$Res, _$PokemonApiModelsImpl>
    implements _$$PokemonApiModelsImplCopyWith<$Res> {
  __$$PokemonApiModelsImplCopyWithImpl(_$PokemonApiModelsImpl _value,
      $Res Function(_$PokemonApiModelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonApiModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$PokemonApiModelsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonApiModelsImpl implements _PokemonApiModels {
  const _$PokemonApiModelsImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.height,
      required this.weight});

  factory _$PokemonApiModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonApiModelsImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final int height;
  @override
  final int weight;

  @override
  String toString() {
    return 'PokemonApiModels(id: $id, name: $name, imageUrl: $imageUrl, height: $height, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonApiModelsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, imageUrl, height, weight);

  /// Create a copy of PokemonApiModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonApiModelsImplCopyWith<_$PokemonApiModelsImpl> get copyWith =>
      __$$PokemonApiModelsImplCopyWithImpl<_$PokemonApiModelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonApiModelsImplToJson(
      this,
    );
  }
}

abstract class _PokemonApiModels implements PokemonApiModels {
  const factory _PokemonApiModels(
      {required final int id,
      required final String name,
      required final String imageUrl,
      required final int height,
      required final int weight}) = _$PokemonApiModelsImpl;

  factory _PokemonApiModels.fromJson(Map<String, dynamic> json) =
      _$PokemonApiModelsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  int get height;
  @override
  int get weight;

  /// Create a copy of PokemonApiModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonApiModelsImplCopyWith<_$PokemonApiModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
