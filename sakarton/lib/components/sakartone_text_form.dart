import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String text;
  const TextFields(
    {Key? key, required this.text}
  ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.all(5),
    width: 250.0,
    child:
    TextFormField(
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),
    );
  }
}