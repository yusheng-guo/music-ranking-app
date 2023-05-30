class Config {
  final Map<String, List<String>> musicServices;

  Config({required this.musicServices});

  factory Config.fromJson(Map<String, dynamic> json) {
    final musicServices = <String, List<String>>{};
    json.forEach((key, value) {
      musicServices[key] = List<String>.from(value);
    });
    return Config(musicServices: musicServices);
  }
}
