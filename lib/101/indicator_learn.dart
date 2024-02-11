// ******* Ders - 5.2 *******

import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CeneterCircularProgress(),
      ),
    );
  }
}

//Final color verilirse CeneterCircularRedProgressolarak isimlendirilmeli.
class CeneterCircularProgress extends StatelessWidget {
  const CeneterCircularProgress({
    super.key,
  });

  final Color redColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: redColor,
    );
  }
}
