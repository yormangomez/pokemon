import 'package:app_apprecio/app/business_logic/bloc/pokedex/pokedex_bloc.dart';
import 'package:app_apprecio/app/business_logic/bloc/pokemon/pokemon_bloc.dart';
import 'package:app_apprecio/app/data/models/pokedex.dart';
import 'package:app_apprecio/app/router/app_router.dart';
import 'package:app_apprecio/app/ui/shared/UILayout/spacings_shared.dart';
import 'package:app_apprecio/app/ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIColors.black,
        body: Stack(
          children: [
            BlocBuilder<PokedexBloc, PokedexState>(
              builder: (context, state) {
                return Container(
                  width: double.infinity,
                  height: 100,
                  color: UIColors.background,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
                    child: state.isPokemonGet
                        ? Text(
                            '${state.pokemonGet!.length} Pokemon',
                            style: const TextStyle(fontSize: 24, color: UIColors.white),
                          )
                        : const Text(
                            '0 Pokemon',
                            style: TextStyle(fontSize: 24, color: UIColors.white),
                          ),
                  ),
                );
              },
            ),
            BlocBuilder<PokemonBloc, PokemonState>(
              builder: (context, state) {
                return state.isPokemon
                    ? Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.pokemonList!.length,
                          itemBuilder: ((context, index) {
                            final pokemon = state.pokemonList![index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  context.read<PokemonBloc>().add(PokemonNameEvent(
                                      namePokemon: pokemon.name,
                                      urlImage: state.pokemonList![index].imageUrl.toString()));

                                  Navigator.pushNamed(context, Routes.DETAIL);
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: UIColors.redButton,
                                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: UIColors.redButton,
                                        blurRadius: 5,
                                        offset: Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.network(state.pokemonList![index].imageUrl.toString()),
                                      Text('${pokemon.name}',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: UIColors.white,
                                            fontSize: 24.0,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      )
                    : Container(
                        child: const Center(
                            child: CircularProgressIndicator(
                          color: UIColors.background,
                          backgroundColor: UIColors.white,
                        )),
                      );
              },
            ),
          ],
        ));
  }
}
