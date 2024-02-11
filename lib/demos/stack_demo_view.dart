// ******* Ders - 5 *******

import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});

  final double _cardHeigt = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  bottom: (_cardHeigt / 2),
                  child: _myImage(),
                ),
                Positioned(
                  height: _cardHeigt,
                  // right: 0,
                  // left: 0,
                  width: 200,
                  bottom: 0,
                  child: _cardCustom(),
                )
              ],
            ),
          ),
          Spacer(
            flex: 6,
          )
        ],
      ),
    );
  }

  Image _myImage() {
    return Image.asset(
      'assets/arkaplan1.jpg',
      fit: BoxFit.cover,
    );
  }

  Card _cardCustom() {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
