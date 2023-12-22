
import 'package:flutter/material.dart';


class ExerciseTile extends StatelessWidget {
  final icon;
  final String exercisename;
  final int noofexercise;
  final color;

  const ExerciseTile({super.key,
    required this.icon,
  required this.exercisename,
    required this.noofexercise,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14)
        ),
        child: ListTile(
          leading: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color:color,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Icon(icon,
                color: Colors.white,)),
          title: Text(exercisename,style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
          subtitle: Text(noofexercise.toString() + " Exercise"),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}