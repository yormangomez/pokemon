part of 'pokedex_bloc.dart';

abstract class PokedexEvent extends Equatable {
  const PokedexEvent();

  @override
  List<Object?> get props => [];
}

class PokemonGetEvent extends PokedexEvent {
  final String? namePokemon;
  final String? urlImage;
  const PokemonGetEvent({this.namePokemon, this.urlImage});

  @override
  List<Object?> get props => [namePokemon, urlImage];
}
