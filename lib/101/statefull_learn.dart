// ******* Ders - 6.1 *******

import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';
import 'package:flutter_full_learn/product/language/language_item.dart';

//paaremete alan kısım.
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

// yasam döngüsüsnün sağalandğı kısım.
class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue++;
    } else {
      _countValue--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          LanguageItems.welcomeTitle,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _countValue.toString(),
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Placeholder(),
          /// Her seferinde tüm fonsiyonlar çağrılmaması için
          /// Bu şekilde bir kod tasarmı yapıldı.
          /// Her sefernde 'print' kodu çalışmamış oldu 
          counterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton _deincrementButton() {
    print('BURADA...1');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: Icon(Icons.remove),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }
}
