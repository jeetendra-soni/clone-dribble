import 'package:flutter/material.dart';

class EmoticonFace extends StatefulWidget {
  final String emoticonface, title;
  const EmoticonFace({Key? key, required this.emoticonface, required this.title}) : super(key: key);

  @override
  State<EmoticonFace> createState() => _EmoticonFaceState();
}

class _EmoticonFaceState extends State<EmoticonFace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue[600],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Center(
              child: Text(
                widget.emoticonface,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
