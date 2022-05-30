import 'package:flutter/material.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';

class Promo extends StatelessWidget {
  const Promo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 24,right: 24,bottom: 12),
    child: Container(
      height: size.height / 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: LinearGradient(
          colors: [
            GradientPalette.blue1,
            GradientPalette.blue2,
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Student Holiday',style: TxtStyle.heading3,),
                  Text('Maximal only for two people',style: TxtStyle.heading4,)
                ],
              ),
            ),
          ),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: 'OFF',style: TxtStyle.heading3Medium),
                  TextSpan(text: '50%',style: TxtStyle.heading3),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}

