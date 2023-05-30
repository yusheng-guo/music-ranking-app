import 'package:flutter/material.dart';
import 'package:music_ranking_app/widgets/button_set.dart';
import 'package:music_ranking_app/widgets/leaderboard_type_sidebar.dart';
import 'package:music_ranking_app/widgets/music_ranking.dart';

void main() {
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
      home: const Layout(),
    );
  }
}

// 布局
class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double containerWidth = screenWidth * 0.8;
          double padding = (screenWidth - containerWidth) / 2;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: SizedBox(
              width: containerWidth,
              child: Column(
                children: [
                  const ButtonSet(),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.grey[200],
                          child: const LeaderboardTypeSidebar(),
                        ),
                      ),
                      const Expanded(
                        flex: 3,
                        child: MusicRanking(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
