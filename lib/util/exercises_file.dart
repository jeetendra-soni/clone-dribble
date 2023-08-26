import 'package:flutter/material.dart';

class Exercises extends StatefulWidget {
  final IconData icon; String title, subtitle;
  Exercises({Key? key, required this.icon, required this.title, required this.subtitle}) : super(key: key);

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white,
        child: ListTile(
          leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Icon(widget.icon, color: Colors.white, size: 25,)
          ),
          title: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,),
          subtitle: Text(widget.subtitle, style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          trailing: const Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
