import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 400,
            height: 200,
            child: Text('a' * 500),
          ),
          Container(
            width: 150,
            height: 150,
           
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
               color: Colors.red,
               border: Border.all(width: 5, color: Colors.white12)
            ),
          ),
        ],
      ),
    );
  }
}
