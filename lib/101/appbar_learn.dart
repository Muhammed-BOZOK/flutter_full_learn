import 'package:flutter/material.dart';

class AppbarLearn extends StatelessWidget {
  const AppbarLearn({super.key});

  final String _title = 'Welcom Learn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading: Icon(Icons.chevron_left),
        centerTitle: false,
        // Belirli bir opoziti sağlar 
        backgroundColor: Colors.transparent, 
        // Sayfa ile aynı yükseklikte olmasını sağlar.
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
