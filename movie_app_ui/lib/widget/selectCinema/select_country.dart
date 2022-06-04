import 'package:flutter/material.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

