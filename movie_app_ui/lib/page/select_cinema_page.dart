import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';
import 'package:movie_app_ui/model/movie.dart';

class SelectCinema extends StatelessWidget {
  const SelectCinema({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
              height: size.height / 10,
              child: Center(
                child: Text('Ralph Break The\nInternet',style: TxtStyle.heading1,textAlign: TextAlign.center,),
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
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16,horizontal: 24),
              height: size.height / 14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: DarkTheme.white),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TxtStyle.heading4,
                        hintText: 'Select Your Contry',
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: ImageIcon(
                            AssetImage(AssetPath.iconLocation),
                            color: DarkTheme.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 36,
                      color: DarkTheme.white,
                    ),
                  ),
                ],
              ),
            ),
            buildTitle('Choose Date'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                  days.map((e) => Builder(builder: (context){
                    return Container(
                      height: size.height / 8,
                      width: size.width / 5,
                      decoration: BoxDecoration(
                        color: DarkTheme.darkBackground,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    );
                  },)).toList(),
              ),
            ),
            buildTitle('Central Park CGV'),
            buildTitle('Kim Dong CGV'),
            buildTitle('American CGV'),
          ],
        ),
      ),
    );
  }

  Container buildTitle(String content) {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 24),
            child: Text(content,style: TxtStyle.heading2,),
          );
  }
}