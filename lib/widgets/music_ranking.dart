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
        return TextButton(
          onPressed: () => {},
          child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    items[index].name,
                    style: const TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    items[index].singer,
                    style: const TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    items[index].duration,
                    style: const TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    items[index].link,
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              )),
        );
      },
    );
  }
}
