class Pokemon {
  final int? id;
  final String? name, url;

  String get imageUrl => 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png';
  Pokemon({
    required this.id,
    required this.name,
    this.url,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final url = json['url'] as String;
    final id = int.parse(url.split('/')[6]);

    return Pokemon(id: id, name: name);
  }
}
