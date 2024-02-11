// ******* Ders-6.3 ********

import 'package:flutter/material.dart';

class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({super.key, required this.mesagge});
  final String mesagge;
  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = '';
  late final bool _isOLd;

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  // }

  @override
  void didUpdateWidget(covariant StatefulLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  ///sayfa kapandığı anda çlışır.
  ///ölddürme işlemeleri.
  @override
  void dispose() {
    super.dispose();
    _message = '';
  }

  //Ekran çizilmeden önce çalışır.
  @override
  void initState() {
    super.initState();
    _message = widget.mesagge;
    _isOLd = widget.mesagge.length.isOdd;

    _ComputeName();
  }

  void _ComputeName() {
    if (_isOLd) {
      _message += 'Tek';
    } else {
      _message += 'Cift';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOLd
          ? TextButton(
              onPressed: () {},
              child: Text(_message),
            )
          : ElevatedButton(
              onPressed: () {},
              child: Text(_message),
            ),
    );
  }
}
