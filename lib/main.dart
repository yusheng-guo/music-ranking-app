import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
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
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double containerWidth = screenWidth * 0.8;
        double padding = (screenWidth - containerWidth) / 2;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Container(
            width: containerWidth,
            height: 50,
            color: Colors.blue,
          ),
        );
      },
    );
  }
}
