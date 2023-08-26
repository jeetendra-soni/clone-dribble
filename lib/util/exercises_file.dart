import 'package:flutter/material.dart';

class Exercises extends StatefulWidget {
  final IconData icon; String title, subtitle; final color;
  Exercises({Key? key, required this.icon, required this.title, required this.subtitle, required this.color}) : super(key: key);

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Color(0XFFECF2FF),
        child: ListTile(
          leading: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Icon(widget.icon, color: Colors.white, size: 25,)
          ),
          title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          subtitle: Text(widget.subtitle, style: TextStyle(fontSize: 16)),
          trailing: const Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
