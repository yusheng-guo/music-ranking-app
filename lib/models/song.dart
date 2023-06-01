// enum Platform { QQMusic, KugouMusic, MiguMusic, NeteaseMusic }

class Song {
  final int id;
  final String name;
  final String singer;
  final String duration;
  final String link;
  final String cover;
  final String tag;
  // final Platform platform;
  final int platform;

  Song({
    required this.id,
    required this.name,
    required this.singer,
    required this.duration,
    required this.link,
    required this.cover,
    required this.tag,
    required this.platform,
  });

  // factory Song.fromJson(Map<String, dynamic> json) {
  //   return Song(
  //     id: json['id'],
  //     name: json['name'],
  //     singer: json['singer'],
  //     duration: json['duration'],
  //     link: json['link'],
  //     cover: json['cover'],
  //     tag: json['tag'],
  //     platform: json['platform'],
  //   );
  // }
  factory Song.fromJson(Map<String, dynamic> json) {
    return Song(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      singer: json['singer'] ?? '',
      duration: json['duration'] ?? '',
      link: json['link'] ?? '',
      cover: json['cover'] ?? '',
      tag: json['tag'] ?? '',
      platform: json['platform'] ?? 0,
    );
  }
}
