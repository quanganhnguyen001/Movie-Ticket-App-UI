import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_color.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 50),
    child: IconButton(
      onPressed: (){
        Navigator.of(context).pop();
      },
      icon: FaIcon(FontAwesomeIcons.arrowLeft,color: DarkTheme.white,),
    ),
    );
  }
}

