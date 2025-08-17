import 'dart:math';

import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticon;

  const EmoticonFace({Key? key, required this.emoticon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Text(
          emoticon,
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
