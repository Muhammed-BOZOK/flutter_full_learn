// ******* Ders-6.4 ********

import 'package:flutter/material.dart';

class TextFieldLeeran extends StatefulWidget {
  const TextFieldLeeran({super.key});

  @override
  State<TextFieldLeeran> createState() => _TextFieldLeeranState();
}

class _TextFieldLeeranState extends State<TextFieldLeeran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          /// * KILAVYE
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: _InputDecerotor().emailDecoration,
        ),
      ),
    );
  }
}

class _InputDecerotor {
  final emailDecoration = InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: 'E-Mail',
  );
}
