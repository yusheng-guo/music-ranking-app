import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ApplicationTitle extends StatelessWidget {
  const ApplicationTitle({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return const Text(
      "Music Ranking!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 54,
      ),
    );
  }
}
