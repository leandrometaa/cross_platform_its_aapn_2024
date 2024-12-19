// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_response.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonResponseModel _$PokemonResponseModelFromJson(Map<String, dynamic> json) {
  return _PokemonResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonResponseModel {
  List<PokemonApiModels> get pokemon => throw _privateConstructorUsedError;

  /// Serializes this PokemonResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonResponseModelCopyWith<PokemonResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonResponseModelCopyWith<$Res> {
  factory $PokemonResponseModelCopyWith(PokemonResponseModel value,
          $Res Function(PokemonResponseModel) then) =
      _$PokemonResponseModelCopyWithImpl<$Res, PokemonResponseModel>;
  @useResult
  $Res call({List<PokemonApiModels> pokemon});
}

/// @nodoc
class _$PokemonResponseModelCopyWithImpl<$Res,
        $Val extends PokemonResponseModel>
    implements $PokemonResponseModelCopyWith<$Res> {
  _$PokemonResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_value.copyWith(
      pokemon: null == pokemon
          ? _value.pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<PokemonApiModels>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonResponseModelImplCopyWith<$Res>
    implements $PokemonResponseModelCopyWith<$Res> {
  factory _$$PokemonResponseModelImplCopyWith(_$PokemonResponseModelImpl value,
          $Res Function(_$PokemonResponseModelImpl) then) =
      __$$PokemonResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PokemonApiModels> pokemon});
}

/// @nodoc
class __$$PokemonResponseModelImplCopyWithImpl<$Res>
    extends _$PokemonResponseModelCopyWithImpl<$Res, _$PokemonResponseModelImpl>
    implements _$$PokemonResponseModelImplCopyWith<$Res> {
  __$$PokemonResponseModelImplCopyWithImpl(_$PokemonResponseModelImpl _value,
      $Res Function(_$PokemonResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemon = null,
  }) {
    return _then(_$PokemonResponseModelImpl(
      pokemon: null == pokemon
          ? _value._pokemon
          : pokemon // ignore: cast_nullable_to_non_nullable
              as List<PokemonApiModels>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonResponseModelImpl implements _PokemonResponseModel {
  const _$PokemonResponseModelImpl(
      {required final List<PokemonApiModels> pokemon})
      : _pokemon = pokemon;

  factory _$PokemonResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonResponseModelImplFromJson(json);

  final List<PokemonApiModels> _pokemon;
  @override
  List<PokemonApiModels> get pokemon {
    if (_pokemon is EqualUnmodifiableListView) return _pokemon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemon);
  }

  @override
  String toString() {
    return 'PokemonResponseModel(pokemon: $pokemon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonResponseModelImpl &&
            const DeepCollectionEquality().equals(other._pokemon, _pokemon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pokemon));

  /// Create a copy of PokemonResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonResponseModelImplCopyWith<_$PokemonResponseModelImpl>
      get copyWith =>
          __$$PokemonResponseModelImplCopyWithImpl<_$PokemonResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonResponseModel implements PokemonResponseModel {
  const factory _PokemonResponseModel(
          {required final List<PokemonApiModels> pokemon}) =
      _$PokemonResponseModelImpl;

  factory _PokemonResponseModel.fromJson(Map<String, dynamic> json) =
      _$PokemonResponseModelImpl.fromJson;

  @override
  List<PokemonApiModels> get pokemon;

  /// Create a copy of PokemonResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonResponseModelImplCopyWith<_$PokemonResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
