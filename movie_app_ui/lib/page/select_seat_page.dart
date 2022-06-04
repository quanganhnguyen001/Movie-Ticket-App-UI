import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';

class SelectSeat extends StatelessWidget {
  const SelectSeat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArrowBackButton(),
            Container(
              margin: EdgeInsets.only(left: 24,top: 8),
              child: Text('Ralph Breaks the Internet',style: TxtStyle.heading2,),
            ),
            Container(
              margin: EdgeInsets.only(top: 4,left: 24),
              child: Text('FX Sudirman XXI',style: TxtStyle.heading3Light,),
            ),
          ],
        ),
      ),
    );
  }
}

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16,top: 4),
      child: IconButton(
        icon: FaIcon(FontAwesomeIcons.arrowLeft,color: DarkTheme.white,),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
    );
  }
}