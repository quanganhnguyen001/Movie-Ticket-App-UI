import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: size.height / 3.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AssetPath.teaserRalph),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        GradientPalette.black1,
                      GradientPalette.black2,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                   gradient: LinearGradient(
                      colors: [
                        GradientPalette.black2,
                      GradientPalette.black1,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: size.height / 3.5,
               decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(AssetPath.teaserRalph),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        GradientPalette.black1,
                      GradientPalette.black2,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
            ),
            Padding(padding: EdgeInsets.only(top: 50),
            child: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: FaIcon(FontAwesomeIcons.arrowLeft),
            ),
            ),
          ],
        ),
      ),
    );
  }
}