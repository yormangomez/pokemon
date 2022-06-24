part of 'pokemon_bloc.dart';

abstract class PokemonEvent extends Equatable {
  const PokemonEvent();

  @override
  List<Object?> get props => [];
}

class PokemonLoadEvent extends PokemonEvent {
  const PokemonLoadEvent();

  @override
  List<Object> get props => [];
}

class PokemonNameEvent extends PokemonEvent {
  final String? namePokemon;
  final String? urlImage;
  const PokemonNameEvent({this.namePokemon, this.urlImage});

  @override
  List<Object?> get props => [namePokemon, urlImage];
}
