import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({super.key, this.usrname});

  final String name = 'Muhammed';
  // '?' null değer kullnımana izin verildiğini belirtir.
  final String? usrname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                wordSpacing: 2,
                letterSpacing: 2,
              ),
            ),
            
            Text(
              'hello $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              // MaterialApp.theme özelliğinini kullanımı.
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.yellow),
            ),
            Text(usrname ?? ''),
          ],
        ),
      ),
    );
  }
}

class ProjectColors {
  static Color welcamColors = Colors.yellow;
}
