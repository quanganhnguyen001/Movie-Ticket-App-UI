import 'package:flutter/material.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
    child: SizedBox(
      height: size.height / 15,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: size.height / 15,
              decoration: BoxDecoration(
                color: DarkTheme.darkBackground,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 24,right: 10),
                  child: Icon(Icons.search_outlined,color: DarkTheme.white,),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Movie',
                        hintStyle: TxtStyle.heading3Medium,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16),
            width: size.height / 15,
            height: size.height / 15,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  GradientPalette.blue1,
                  GradientPalette.blue2,
                ],
              ),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(AssetPath.iconControl),
          ),
        ],
      ),
    ),
    );
  }
}

