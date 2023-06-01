import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:music_ranking_app/models/song.dart';

// Future<List<Song>> fetchSongs(String url) async {
//   final response = await http.get(Uri.parse(url));

//   if (response.statusCode == 200) {
//     List<dynamic> songsJson = jsonDecode(response.body);
//     return songsJson.map((json) => Song.fromJson(json)).toList();
//   } else {
//     throw Exception('Failed to load songs');
//   }
// }

Future<List<Song>> fetchSongs(String url) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    Map<String, dynamic> data = jsonDecode(response.body);
    List<dynamic> songsJson = data['songs'];
    return songsJson.map((json) => Song.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load songs');
  }
}
