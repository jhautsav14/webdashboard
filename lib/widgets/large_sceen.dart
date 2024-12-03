import 'package:flutter/material.dart';

class LargeSceen extends StatelessWidget {
  const LargeSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(child: Container(
            color: Colors.red,
          )),
          Expanded(
            flex: 5,
            child: Container(
            color: Colors.blue,
          ))
        ],
      );
  }
}