import 'package:app_apprecio/app/business_logic/bloc/settings/settings_bloc.dart';
import 'package:app_apprecio/app/ui/android/home/home_page.dart';
import 'package:app_apprecio/app/ui/android/pokemon/pokemon_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNavigation extends StatefulWidget {
  CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  final SettingsBloc _settingsBloc = SettingsBloc();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.couterIndex,
            children: const [
              HomePage(),
              PokemonPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.couterIndex,
            onTap: (value) {
              context.read<SettingsBloc>().add(PageTapped(indexCouter: value));
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home), label: 'Inicio'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person), label: 'Pokemon'),
            ],
          ),
        );
      },
    );
  }
}
