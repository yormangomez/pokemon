class PokeDex {
  final String? name, url;

  PokeDex({
    required this.name,
    this.url,
  });

  static PokeDex fromJson(Map<String, dynamic> json) {
    return PokeDex(
      name: json['name'],
      url: json['url'],
    );
  }
}
