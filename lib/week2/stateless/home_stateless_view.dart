import 'package:flutter/material.dart';
import 'package:flutter_full_learn/week2/core/image_maneger.dart';

class HomeViewStateful extends StatefulWidget {
  const HomeViewStateful({super.key});

  @override
  State<HomeViewStateful> createState() => _HomeViewStatefulState();
}

class _HomeViewStatefulState extends State<HomeViewStateful> {
  bool _isLoading = true;
  late final ImageManger imageManger;

  //sayfa ilk çalıştığında çalışır
  @override
  void initState() {
    super.initState();
    //ekaranı 3sn bekletmemizi sağlar
    waitForLoadind();
  }

  void waitForLoadind() async {
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  //sayfada çıkıldığı andda çalışır
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isLoading ? CircularProgressIndicator() : FlutterLogo(),
          AnimatedOpacity(
            opacity: _isLoading ? 0 : 1,
            duration: Duration(seconds: 1),
            child: Image.network(imageManger.randomImage),
          ),
        ],
      ),
    );
  }
}
