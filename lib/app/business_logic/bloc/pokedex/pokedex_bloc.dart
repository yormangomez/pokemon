import 'package:app_apprecio/app/data/models/pokedex.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pokedex_event.dart';
part 'pokedex_state.dart';

class PokedexBloc extends Bloc<PokedexEvent, PokedexState> {
  PokedexBloc() : super(PokedexInitial()) {
    on<PokemonGetEvent>((event, emit) async {
      if (!state.isPokemonGet) {
        final Map<String, dynamic> getPokemon = {};
        final List listGetPokemon = [];
        getPokemon.addAll({'name': '${event.namePokemon}'});
        getPokemon.addAll({'url': '${event.urlImage}'});
        listGetPokemon.add(getPokemon);
        final pokemonList = listGetPokemon.map((e) => PokeDex.fromJson(e)).toList();
        emit(PokemonGet(newPokemonGet: pokemonList));
      } else {
        final Map<String, dynamic> newGetPokemon = {};
        final List newListGetPokemon = [];
        newGetPokemon.addAll({'name': '${event.namePokemon}'});
        newGetPokemon.addAll({'url': '${event.urlImage}'});
        newListGetPokemon.add(newGetPokemon);
        final pokemonList = newListGetPokemon.map((e) => PokeDex.fromJson(e)).toList();
        for (var element in state.pokemonGet!) {
          pokemonList.add(element);
        }
        emit(PokemonGet(newPokemonGet: pokemonList));
      }

      //print(pokemonList);
    });
  }
}
