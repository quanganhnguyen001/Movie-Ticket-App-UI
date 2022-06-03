import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
    required this.size, required this.content,
  }) : super(key: key);

  final Size size;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
      height: size.height / 10,
      child: Center(
        child: Text(content,style: TxtStyle.heading1,textAlign: TextAlign.center,),
      ),
    ),
    Container(
      padding: EdgeInsets.only(left: 16,top: 4),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: DarkTheme.white,
        ),
      ),
    ),
      ],
    );
  }
}

