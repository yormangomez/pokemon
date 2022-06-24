import 'package:app_apprecio/app/business_logic/bloc/pokedex/pokedex_bloc.dart';
import 'package:app_apprecio/app/business_logic/bloc/pokemon/pokemon_bloc.dart';
import 'package:app_apprecio/app/router/app_router.dart';
import 'package:app_apprecio/app/ui/android/widget/custom_bottom_navigator.dart';
import 'package:app_apprecio/app/ui/shared/UILayout/spacings_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/app_color.dart';

class PokemonPage extends StatelessWidget {
  const PokemonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.black,
      body: BlocBuilder<PokedexBloc, PokedexState>(
        builder: (context, state) {
          return state.pokemonGet != null
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                  ),
                  physics: const BouncingScrollPhysics(),
                  itemCount: state.pokemonGet!.length,
                  itemBuilder: ((context, index) {
                    final pokemon = state.pokemonGet![index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          context
                              .read<PokemonBloc>()
                              .add(PokemonNameEvent(namePokemon: pokemon.name, urlImage: pokemon.url));
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
                              Image.network(pokemon.url.toString()),
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
                )
              : Container(
                  child: Center(child: Text('No hay pokemos atrapados')),
                );
        },
      ),
    );
  }
}
