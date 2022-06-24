import 'package:app_apprecio/app/business_logic/bloc/pokedex/pokedex_bloc.dart';
import 'package:app_apprecio/app/business_logic/bloc/pokemon/pokemon_bloc.dart';
import 'package:app_apprecio/app/ui/shared/UILayout/spacings_shared.dart';
import 'package:app_apprecio/app/ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.black,
      body: Stack(
        children: [
          BlocBuilder<PokemonBloc, PokemonState>(
            builder: (context, state) {
              return state.isPokemonPower
                  ? Column(
                      children: [
                        Container(
                            width: double.infinity,
                            height: 400,
                            decoration: const BoxDecoration(
                              color: UIColors.redButton,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25.0), bottomRight: Radius.circular(25.0)),
                              boxShadow: [
                                BoxShadow(
                                  color: UIColors.redButton,
                                  blurRadius: 5,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Image.network(state.urlPokemon!, fit: BoxFit.fill)),
                        UISpacing.spacingH16,
                        Text('${state.namePokemon}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: UIColors.white,
                              fontSize: 24.0,
                            )),
                        UISpacing.spacingH16,
                        const Text(
                          'Base Stats',
                          style: TextStyle(
                            fontSize: 24,
                            color: UIColors.white,
                          ),
                        ),
                        UISpacing.spacingH8,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                ...state.power!.map(((e) => Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${e}',
                                        style: const TextStyle(
                                          color: UIColors.white,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    )))
                              ],
                            ),
                            Container(
                              width: 250.0,
                              child: Column(
                                children: [
                                  ...state.valuePower!.map(((e) => Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: LinearProgressIndicator(
                                              minHeight: 15,
                                              color: UIColors.background,
                                              backgroundColor: UIColors.white,
                                              value: e / 270,
                                            ),
                                          ),
                                          Center(
                                              child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              '${e}/270',
                                              style: TextStyle(fontSize: 15.0),
                                            ),
                                          ))
                                        ],
                                      ))),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
                child: IconButton(
                    onPressed: () {
                      context.read<PokemonBloc>().add(PokemonLoadEvent());
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_outlined,
                      color: UIColors.white,
                      size: 32.0,
                    )),
              ),
              const Text(
                'PokeDex',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: UIColors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: BlocBuilder<PokemonBloc, PokemonState>(
        builder: (context, state) {
          return FloatingActionButton(
              backgroundColor: UIColors.background,
              onPressed: () {
                context.read<PokedexBloc>().add(PokemonGetEvent(
                      namePokemon: state.namePokemon,
                      urlImage: state.urlPokemon,
                    ));
                Navigator.pop(context);
                context.read<PokemonBloc>().add(PokemonLoadEvent());
              },
              child: BlocBuilder<PokedexBloc, PokedexState>(
                builder: (context, state) {
                  return const Text(
                    'Atrapar',
                    style: TextStyle(fontSize: 13),
                  );
                },
              ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
