class PokemonDetail {
  final int? hp, attack, defense, specialAttack, specialDefense, speed;
  //final Map? stat;
  PokemonDetail({
    required this.hp,
    required this.attack,
    required this.defense,
    required this.specialAttack,
    required this.specialDefense,
    required this.speed,
  });

  static PokemonDetail fromJson(Map<String, dynamic> json) {
    return PokemonDetail(
      hp: json['hp'] as int,
      attack: json['attack'] as int,
      defense: json['defense'] as int,
      specialAttack: json['special-attack'] as int,
      specialDefense: json['special-defense'] as int,
      speed: json['speed'] as int,
    );
  }
}
