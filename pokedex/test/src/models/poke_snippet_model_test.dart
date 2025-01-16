import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/api/models/poke_snippet_api_model.dart';
import 'package:pokedex/src/models/poke_snippet_model.dart';

void main() {
  group('PokeSnippetApiModelAdapter', () {
    test("toModel maps api models to ours", () {
      const apiModel = PokeSnippetApiModel(
        name: "machop",
        url: "https://pokeapi.co/api/v2/pokemon/66/",
      );

      final myModel = apiModel.toModel();

      expect(myModel.id, equals(66));
      expect(myModel.name, equals("machop"));
    });
  });

  group('PokeListSnippetApiModelAdapter', () {
    test('toModels works with iterables of api models', () {
      const apiResponse = [
        PokeSnippetApiModel(
          name: "bulbasaur",
          url: "https://pokeapi.co/api/v2/pokemon/1/",
        ),
        PokeSnippetApiModel(
          name: "ivysaur",
          url: "https://pokeapi.co/api/v2/pokemon/2/",
        ),
        PokeSnippetApiModel(
          name: "venusaur",
          url: "https://pokeapi.co/api/v2/pokemon/3/",
        ),
        PokeSnippetApiModel(
          name: "charmander",
          url: "https://pokeapi.co/api/v2/pokemon/4/",
        ),
        PokeSnippetApiModel(
          name: "charmeleon",
          url: "https://pokeapi.co/api/v2/pokemon/5/",
        ),
      ];

      final list = apiResponse.toModels();

      expect(
        list,
        equals(
          const [
            PokeSnippetModel(
              name: "bulbasaur",
              id: 1,
            ),
            PokeSnippetModel(
              name: "ivysaur",
              id: 2,
            ),
            PokeSnippetModel(
              name: "venusaur",
              id: 3,
            ),
            PokeSnippetModel(
              name: "charmander",
              id: 4,
            ),
            PokeSnippetModel(
              name: "charmeleon",
              id: 5,
            ),
          ],
        ),
      );
    });
  });
}
