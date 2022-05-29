import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';
import 'package:movie_app_ui/model/movie.dart';
import 'package:movie_app_ui/widget/home/category_bar.dart';
import 'package:movie_app_ui/widget/home/home_header.dart';
import 'package:movie_app_ui/widget/home/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(size: size),
            const SizedBox(height: 20,),
            SearchBar(size: size),
            const SizedBox(height: 20,),
            CategoryBar(size: size),
            buildTitle('Now Playing'),
            CarouselSlider(
              items: movies.map((e) => Builder(builder: (context) {
                return Container(
                  width: size.width,
                  padding: EdgeInsets.only(left: 10,bottom: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(e.backgroundImg),
                    ),
                  ),
                );
              })).toList(),
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          ],
        ),
      ),
      
    );
  }

  Padding buildTitle(String content) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
          child: Text(content,style: TxtStyle.heading2,),
          );
  }
}

