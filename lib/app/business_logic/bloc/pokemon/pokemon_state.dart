part of 'pokemon_bloc.dart';

abstract class PokemonState extends Equatable {
  final List<Pokemon>? pokemonList;
  final bool isPokemon;
  final List? power;
  final List? valuePower;
  final String? namePokemon;
  final String? urlPokemon;
  final bool isPokemonPower;

  const PokemonState({
    this.pokemonList,
    this.isPokemon = false,
    this.power,
    this.valuePower,
    this.isPokemonPower = false,
    this.namePokemon,
    this.urlPokemon,
  });

  @override
  List<Object?> get props => [pokemonList, isPokemon, power, isPokemonPower, valuePower];
}

class PokemonInitial extends PokemonState {
  const PokemonInitial()
      : super(
          pokemonList: null,
          isPokemon: false,
          power: null,
          isPokemonPower: false,
          valuePower: null,
          namePokemon: null,
          urlPokemon: null,
        );
}

class PokemonLoad extends PokemonState {
  final List<Pokemon>? newPokemonList;
  PokemonLoad({this.newPokemonList}) : super(pokemonList: newPokemonList, isPokemon: true);
  @override
  List<Object?> get props => [newPokemonList];
}

class PokemonDetailState extends PokemonState {
  final List? newPower;
  final List? newValuePower;
  final String? newNamePokemon;
  final String? newUrlImage;

  PokemonDetailState({this.newPower, this.newValuePower, this.newNamePokemon, this.newUrlImage})
      : super(
          power: newPower,
          valuePower: newValuePower,
          isPokemonPower: true,
          namePokemon: newNamePokemon,
          urlPokemon: newUrlImage,
        );
}
