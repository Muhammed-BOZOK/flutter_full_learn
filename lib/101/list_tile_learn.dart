// ******* Ders - 5.3 *******

import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  ListTileLearn({super.key});

  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              //tıklanabilir
              onTap: () {},
              title: Image.network(
                imageUrl,
                height: 150,
                fit: BoxFit.cover,
                ),
              subtitle: Text('How do you use your cart'),
              //soluna yerleşitirir.
              leading: Icon(Icons.money),
              //sağın yerleştirir.
              trailing: Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
    );
  }
}

