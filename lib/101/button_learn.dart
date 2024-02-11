import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text(
              'save',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            onPressed: () {},
            style: TextButton.styleFrom(backgroundColor: Colors.red),
          ),

          ElevatedButton(onPressed: () {}, child: Text('data')),

          IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),

          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),

          // tıklanabilir alan oluşturm.
          InkWell(
            onTap: () {},
            child: Text('custom'),
          ),

          Container(
            height: 200,
            color: Colors.white,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,

                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all())
              ),
            onPressed: () {},
            child: Padding(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
              child: Text(
                'Place bid',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          )
        ],
      ),
    );
  }
}
