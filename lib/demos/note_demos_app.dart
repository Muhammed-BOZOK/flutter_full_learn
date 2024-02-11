// ***** Ders - 4.2 *****

import 'package:flutter/material.dart';
//import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});

  final title = 'Creat your firt note';
  final subtitle = 'add a note';
  final ElevatedButtonText = 'Create a note';
  final TextButtonText = 'Impot Note';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: PaddingItim.horizontalPadding,
        child: Column(
          children: [
            //PngImage(name: ImageItems().appleBookWithoutPath),
            SizedBox(
              child: Image.asset(
                "assets/png/ic_apple_with_school.png",
                fit: BoxFit.scaleDown,
              ),
            ),
            _TitleWidget(title: title),
            Padding(
              padding: PaddingItim.verticalPadding,
              child: _SubTitleWidget(
                subtitle: subtitle,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                height: ButtonHight.buttonHight,
                child: Center(
                  child: Text(
                    ElevatedButtonText,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ),
            ),

            TextButton(onPressed: () {}, child: Text(TextButtonText)),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}

//******** subtitle widget *******
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget({
    Key? key,
    required this.subtitle,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  final String subtitle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle * 14,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w500),
    );
  }
}

//******* text wiget  ******
class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
    );
  }
}

class PaddingItim {
  static EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHight {
  static double buttonHight = 50;
}
