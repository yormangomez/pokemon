import 'dart:io';
import 'package:dio/dio.dart';

class PokemonAPI {
  final Dio _dio = Dio();

  Future<dynamic> pokemonGetAll() async {
    try {
      final response = await _dio.get('https://pokeapi.co/api/v2/pokemon/');

      if (response.statusCode == 200) {
        final user = (response.data['results']);

        return user;
      } else {
        return Future.error('Ocurrio un error al obtener la respuesta');
      }
    } on SocketException {
      return Future.error('Se perdió la conexión con el servidor, por favor verifique su conexión a internet');
    } on Exception {
      return Future.error('Ocurrio un error al obtener la respuesta del servidor');
    }
  }

  Future<dynamic> pokemonDetail(String namePokemon) async {
    try {
      final response = await _dio.get('https://pokeapi.co/api/v2/pokemon/${namePokemon}');

      if (response.statusCode == 200) {
        final user = (response.data);

        return user;
      } else {
        return Future.error('Ocurrio un error al obtener la respuesta');
      }
    } on SocketException {
      return Future.error('Se perdió la conexión con el servidor, por favor verifique su conexión a internet');
    } on Exception {
      return Future.error('Ocurrio un error al obtener la respuesta del servidor');
    }
  }
}
