import 'package:app_apprecio/app/business_logic/bloc/pokemon/pokemon_bloc.dart';
import 'package:app_apprecio/app/business_logic/bloc/settings/settings_bloc.dart';
import 'package:app_apprecio/app/router/app_pages.dart';
import 'package:app_apprecio/app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PokemonBloc()),
          BlocProvider(create: (context) => SettingsBloc()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          routes: getApplicationsRoutes(),
          initialRoute: Routes.INITIAL,
          theme: ThemeData(
              //  primarySwatch: Colors.blue,
              ),
        ),
      ),
    ),
  );
}
