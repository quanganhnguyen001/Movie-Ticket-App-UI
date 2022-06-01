import 'package:flutter/material.dart';
import 'package:movie_app_ui/model/movie.dart';
import 'package:movie_app_ui/page/detail_page.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      children: 
        movies.map((e) => Builder(builder: (context) {
          return Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetail()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: Image.asset(e.posterImg),
              ),
            ),
          );
        })).toList(),
    ),
    );
  }
}

