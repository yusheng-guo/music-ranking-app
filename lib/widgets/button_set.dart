import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ButtonSet extends StatelessWidget {
  const ButtonSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () => {},
            child: const Text(
              "QQ音乐",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          TextButton(
            onPressed: () => {},
            child: const Text(
              "酷狗音乐",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          TextButton(
            onPressed: () => {},
            child: const Text(
              "咪咕音乐",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
    );
  }
}
