import 'package:app_apprecio/app/data/models/pokedex.dart';
import 'package:app_apprecio/app/data/models/pokemon.dart';
import 'package:app_apprecio/app/data/models/pokemon_detail.dart';
import 'package:app_apprecio/app/data/repository/pokemon_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pokemon_event.dart';
part 'pokemon_state.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  final PokemonRepository _pokemonRepository = PokemonRepository();

  PokemonBloc() : super(PokemonInitial()) {
    on<PokemonLoadEvent>((event, emit) async {
      final List pokemon = await _pokemonRepository.pokemonGetAll();
      final pokemonList = pokemon.map((e) => Pokemon.fromJson(e)).toList();
      emit(PokemonLoad(newPokemonList: pokemonList));
    });

    on<PokemonNameEvent>((event, emit) async {
      final pokemonDetail = await _pokemonRepository.pokemonDetail(event.namePokemon!);
      final List power = [];
      final List valuePower = [];
      for (var i in pokemonDetail['stats']) {
        valuePower.add(i['base_stat']);
      }
      for (var i in pokemonDetail['stats']) {
        power.add(i['stat']['name']);
      }

      emit(PokemonDetailState(
        newPower: power,
        newValuePower: valuePower,
        newNamePokemon: event.namePokemon,
        newUrlImage: event.urlImage,
      ));
    });
  }
}
