import 'package:app_apprecio/app/data/provider/pokemon_api.dart';

class PokemonRepository {
  final PokemonAPI _pokemonRepository = PokemonAPI();

  Future<dynamic> pokemonGetAll() async => await _pokemonRepository.pokemonGetAll();

  Future<dynamic> pokemonDetail(String namePokemon) async => await _pokemonRepository.pokemonDetail(namePokemon);
}
