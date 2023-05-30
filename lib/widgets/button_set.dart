import 'package:flutter/material.dart';

class ButtonSet extends StatefulWidget {
  const ButtonSet({super.key});

  @override
  State<ButtonSet> createState() => _ButtonSetState();
}

class _ButtonSetState extends State<ButtonSet> {
  int _selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 10,
          ),
          TextButton(
            onPressed: () => {
              setState(() => _selectedButton = 0),
            },
            child: Text(
              "QQ音乐",
              style: TextStyle(
                fontSize: 18.0,
                // color: Colors.black,
                color: _selectedButton == 0 ? Colors.purple : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () => {
              setState(() => _selectedButton = 1),
            },
            child: Text(
              "酷狗音乐",
              style: TextStyle(
                fontSize: 18.0,
                // color: Colors.black,
                color: _selectedButton == 1 ? Colors.purple : Colors.black,
              ),
            ),
          ),
          TextButton(
            onPressed: () => {
              setState(() => _selectedButton = 2),
            },
            child: Text(
              "咪咕音乐",
              style: TextStyle(
                fontSize: 18.0,
                // color: Colors.black,
                color: _selectedButton == 2 ? Colors.purple : Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
