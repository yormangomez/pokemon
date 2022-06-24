part of 'pokedex_bloc.dart';

abstract class PokedexState extends Equatable {
  final List<PokeDex>? pokemonGet;
  final bool isPokemonGet;
  const PokedexState({this.pokemonGet, this.isPokemonGet = false});

  @override
  List<Object?> get props => [pokemonGet, isPokemonGet];
}

class PokedexInitial extends PokedexState {
  PokedexInitial() : super(pokemonGet: null, isPokemonGet: false);
}

class PokemonGet extends PokedexState {
  final List<PokeDex>? newPokemonGet;
  PokemonGet({this.newPokemonGet}) : super(pokemonGet: newPokemonGet, isPokemonGet: true);
  @override
  List<Object?> get props => [newPokemonGet];
}
