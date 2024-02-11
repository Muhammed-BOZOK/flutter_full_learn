//***** Ders - 6.1*********

import 'package:flutter/material.dart';

class counterHelloButton extends StatefulWidget {
  const counterHelloButton({super.key});

  @override
  State<counterHelloButton> createState() => _counterHelloButtonState();
}

class _counterHelloButtonState extends State<counterHelloButton> {
  int _counterCustom = 0;

  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _updateCounter,
      child: Text('Merhaba $_counterCustom'),
    );
  }
}
