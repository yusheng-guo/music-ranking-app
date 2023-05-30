import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_ranking_app/config.dart';
import 'package:music_ranking_app/widgets/application_title.dart';
import 'package:music_ranking_app/widgets/button_set.dart';
import 'package:music_ranking_app/widgets/leaderboard_type_sidebar.dart';
import 'package:music_ranking_app/widgets/music_ranking.dart';

Future<Config> loadConfig() async {
  final configString = await rootBundle.loadString('assets/config.json');
  final configJson = jsonDecode(configString);
  return Config.fromJson(configJson);
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final config = await loadConfig();
  print(config.musicServices);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.purple,
        // textTheme: const TextTheme(
        //   bodyLarge: TextStyle(color: Colors.black),
        // ),
      ),
      home: Layout(),
    );
  }
}

// 布局
class Layout extends StatelessWidget {
  final List<String> platforms = ['QQ音乐', '酷狗音乐', '咪咕音乐'];
  final List<String> charts = ['飙升榜', '新歌榜', '热门榜'];
  final List<String> songs = List.generate(20, (i) => '歌曲曲曲曲曲曲曲曲曲 $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;
            double containerWidth = screenWidth * 0.8;
            double padding = (screenWidth - containerWidth) / 2;

            return Container(
              padding: EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const ApplicationTitle(),
                  const SizedBox(
                    height: 10,
                  ),
                  const ButtonSet(),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Row(
                      children: const [
                        Expanded(
                          flex: 1,
                          child: LeaderboardTypeSidebar(),
                        ),
                        Expanded(
                          flex: 4,
                          child: MusicRanking(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
