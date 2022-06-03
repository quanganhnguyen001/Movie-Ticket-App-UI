import 'package:flutter/material.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key, required this.press,
  }) : super(key: key);
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: ElevatedButton(
        onPressed: press,
        child: ImageIcon(
          AssetImage(AssetPath.iconNext),
          color: DarkTheme.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(20),
          primary: DarkTheme.blueMain,
        ),
      ),
    );
  }
}