import 'package:flutter/material.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/text_style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 64,right: 24,left: 24),
    child: SizedBox(
      height: size.height / 10,//take 10% of screen
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Find Your Best \nMovie',
          style: TxtStyle.heading1SemiBold,
          ),
          CircleAvatar(
            radius: size.height / 24, //take 24% of screen
            backgroundImage: const AssetImage(AssetPath.iconProfile),
          ),
        ],
      ),
    ),
    );
  }
}