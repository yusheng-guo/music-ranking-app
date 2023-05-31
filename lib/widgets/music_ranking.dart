import 'package:flutter/material.dart';
import 'package:music_ranking_app/data/songs.dart';
import 'package:music_ranking_app/models/song.dart';

class MusicRanking extends StatefulWidget {
  const MusicRanking({super.key});

  @override
  State<MusicRanking> createState() => _MusicRankingState();
}

class _MusicRankingState extends State<MusicRanking> {
  List<Song> items = songs;

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          // leading: Image.network(items[index].cover),
          title: Text(items[index].name),
          subtitle: Text(items[index].singer),
          trailing: Text(items[index].duration),
        );
      },
    );
  }
}
