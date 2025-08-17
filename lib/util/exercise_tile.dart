import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String excesiseName;
  final int time;
  final color;
  const ExerciseTile({
    Key? key,
    required this.icon,
    required this.color,
    required this.excesiseName,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: color,
                    child: Icon(icon, color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      excesiseName,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      time.toString() + ' min',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz, size: 30),
          ],
        ),
      ),
    );
  }
}
