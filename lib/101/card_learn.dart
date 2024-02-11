import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: MarginSize.mrgin,
            color: Colors.white,
            shape: StadiumBorder(),
            child: SizedBox(
              height: 100,
              width: 300,
            ),
          )
        ],
      ),
    );
  }
}

class MarginSize {
  static const mrgin = EdgeInsets.all(10);
}

// Border:
//   StadiumBorder(), CircleBorder(), RoundedRectangleBorder()