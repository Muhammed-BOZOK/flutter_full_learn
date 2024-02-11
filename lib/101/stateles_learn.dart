import 'package:flutter/material.dart';

class StatlesLearn extends StatelessWidget {
  const StatlesLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TitleTextWidget(),
          TitleTextWidget(),
          TitleTextWidget(),
          _CustomContainer()
        ],
      ),
    );
  }
}

// '_' sadece bu sayfadan erişilmesini sağlar.
class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'C data',
        style: Theme.of(context).textTheme.labelMedium,
      ),
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.blue),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key});

  // değiştirilemez olmalı
  final String title = 'text widget';

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
