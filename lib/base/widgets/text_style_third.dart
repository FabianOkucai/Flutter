import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tika/base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final bool? isColor;
 TextStyleThird({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor==null? AppStyles.headlineStyle3
          .copyWith(color: Colors.white):AppStyles.headlineStyle3,
    );
  }
}
