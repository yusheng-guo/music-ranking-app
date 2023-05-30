import 'package:flutter/material.dart';

class LeaderboardTypeSidebar extends StatefulWidget {
  const LeaderboardTypeSidebar({super.key});

  @override
  State<LeaderboardTypeSidebar> createState() => _LeaderboardTypeSidebarState();
}

class _LeaderboardTypeSidebarState extends State<LeaderboardTypeSidebar> {
  final items = ["飙升榜", "新歌榜", "热门榜"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TextButton(
          onPressed: () => {},
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              items[index],
              style: const TextStyle(color: Colors.black),
            ),
          ),
        );
      },
    );
  }
}
