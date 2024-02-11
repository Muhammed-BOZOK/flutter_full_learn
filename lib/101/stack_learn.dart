// ******* Ders - 5.5 *******

import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            color: Colors.blue,
            height: 100,
          ),

          //
          Positioned(
            right: 0,
            left: 0,
            top: 25,
            height: 100,
            child: Container(
              color: Colors.green,
            ),
          ),
          Positioned.fill(
            right: 0,
            left: 0,
            top: 25,
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
