import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 24,top: 8),
          child: Text('Ralph Breaks the Internet',style: TxtStyle.heading2,),
        ),
        Container(
          margin: EdgeInsets.only(top: 4,left: 24),
          child: Text('FX Sudirman XXI',style: TxtStyle.heading3Light,),
        ),
      ],
    );
  }
}

