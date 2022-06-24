import 'package:app_apprecio/app/business_logic/bloc/pokemon/pokemon_bloc.dart';
import 'package:app_apprecio/app/business_logic/bloc/settings/settings_bloc.dart';
import 'package:app_apprecio/app/router/app_router.dart';
import 'package:app_apprecio/app/ui/shared/button/abstract_button.dart';
import 'package:app_apprecio/app/ui/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.background,
      body: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.transparent,
              child: Image.asset('assets/images/logo.png'),
            ),
            AbstractButton.primary(
              onPressed: () {
                context.read<SettingsBloc>().add(PageTapped(indexCouter: 0));
                context.read<PokemonBloc>().add(const PokemonLoadEvent());
                //context.read<PokemonBloc>().add(PokemonNameEvent(namePokemon: 'pikachu'.toString()));

                Navigator.popAndPushNamed(context, Routes.INITIAL);
              },
              title: const Text(
                'Ingresar',
                style: TextStyle(color: UIColors.black, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
