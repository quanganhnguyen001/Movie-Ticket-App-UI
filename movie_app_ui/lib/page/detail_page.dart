import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/app_constant.dart';
import 'package:movie_app_ui/config/text_style.dart';
import 'package:movie_app_ui/widget/detail/arrow_back.dart';
import 'package:movie_app_ui/widget/detail/background.dart';
import 'package:movie_app_ui/widget/star.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({ Key? key }) : super(key: key);

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> with SingleTickerProviderStateMixin{
  late TabController _tabcontroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackGround(size: size),
            Container(
              height: size.height / 3.5,
               decoration: BoxDecoration(
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
            ArrowBack(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(padding: EdgeInsets.only(left: 24,top: size.height / 4.5),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 2.5,
                      child: Image.asset(AssetPath.posterRalph,fit: BoxFit.cover,),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 8,bottom: 8),
                            width: size.width,
                            child: Text('Ralph Break The Internet',style: TxtStyle.heading3Medium,),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8,bottom: 8),
                            child: Row(
                              children: [
                                StarWidget(),
                                StarWidget(),
                                StarWidget(),
                                StarWidget(),
                                StarWidget(),
                                Text('(5.0)',style: TxtStyle.heading4,),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8,bottom: 8),
                            width: size.width,
                            child: Text('Action & Adventure, Comedy',style: TextStyle(color: Colors.grey),),
                          ),
                          Container(
                            width: size.width,
                            padding: EdgeInsets.only(left: 8,bottom: 8),
                            child: Text('1h41min,',style: TextStyle(color: Colors.grey),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ),
                SizedBox(
              height: size.height - 120,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    alignment: Alignment.center,
                    width: size.width,
                    child: TabBar(
                      tabs: [
                        Tab(text: 'About movie',),
                        Tab(text: 'Review',),
                      ],
                      controller: _tabcontroller,indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TxtStyle.heading3,
                      unselectedLabelStyle: TxtStyle.heading3,
                      indicatorColor: DarkTheme.white,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabcontroller,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            buildTitle('Synopsis'),
                            Padding(padding: EdgeInsets.only(left: 24,),
                            child: Text(AppConstant.exampleContent,style: TxtStyle.heading4Light,),
                            ),
                            buildTitle('Cast & Crew'),
                            buildTitle('Trailer and Song'),
                          ],
                        ),
                        Container(
                          child: Text('Review Page'),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(padding: EdgeInsets.all(24),
      child: Text(content,style: TxtStyle.heading2,),
    );
  }
}

