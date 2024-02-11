import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});

  final IconSizes iconSizes = IconSizes();
  final IconColors iconColors = IconColors();

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Learn'),
      ),
      body: Column(
        children: [
          //genel kullanım
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: Colors.red,
                size: 40,
              )),

          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSizes.iconSmall,
              )),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconSmall = 40;
}

class IconColors {
  final Color froly = Color(0xffED617A);
}
