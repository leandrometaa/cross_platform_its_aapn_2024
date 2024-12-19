// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$productsHash() => r'5ac8db7c2b53aa69b5984695bb1cd97c27d24a65';

/// See also [products].
@ProviderFor(products)
final productsProvider =
    AutoDisposeFutureProvider<List<PokemonModels>>.internal(
  products,
  name: r'productsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$productsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProductsRef = AutoDisposeFutureProviderRef<List<PokemonModels>>;
String _$pokemonDetailHash() => r'44b2a80e34ecbb3ca4982318fdc27cfbd745feae';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [pokemonDetail].
@ProviderFor(pokemonDetail)
const pokemonDetailProvider = PokemonDetailFamily();

/// See also [pokemonDetail].
class PokemonDetailFamily extends Family<AsyncValue<PokemonApiModels>> {
  /// See also [pokemonDetail].
  const PokemonDetailFamily();

  /// See also [pokemonDetail].
  PokemonDetailProvider call(
    int pokemonId,
  ) {
    return PokemonDetailProvider(
      pokemonId,
    );
  }

  @override
  PokemonDetailProvider getProviderOverride(
    covariant PokemonDetailProvider provider,
  ) {
    return call(
      provider.pokemonId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'pokemonDetailProvider';
}

/// See also [pokemonDetail].
class PokemonDetailProvider
    extends AutoDisposeFutureProvider<PokemonApiModels> {
  /// See also [pokemonDetail].
  PokemonDetailProvider(
    int pokemonId,
  ) : this._internal(
          (ref) => pokemonDetail(
            ref as PokemonDetailRef,
            pokemonId,
          ),
          from: pokemonDetailProvider,
          name: r'pokemonDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pokemonDetailHash,
          dependencies: PokemonDetailFamily._dependencies,
          allTransitiveDependencies:
              PokemonDetailFamily._allTransitiveDependencies,
          pokemonId: pokemonId,
        );

  PokemonDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pokemonId,
  }) : super.internal();

  final int pokemonId;

  @override
  Override overrideWith(
    FutureOr<PokemonApiModels> Function(PokemonDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PokemonDetailProvider._internal(
        (ref) => create(ref as PokemonDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pokemonId: pokemonId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PokemonApiModels> createElement() {
    return _PokemonDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailProvider && other.pokemonId == pokemonId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pokemonId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PokemonDetailRef on AutoDisposeFutureProviderRef<PokemonApiModels> {
  /// The parameter `pokemonId` of this provider.
  int get pokemonId;
}

class _PokemonDetailProviderElement
    extends AutoDisposeFutureProviderElement<PokemonApiModels>
    with PokemonDetailRef {
  _PokemonDetailProviderElement(super.provider);

  @override
  int get pokemonId => (origin as PokemonDetailProvider).pokemonId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
