import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app_ui/config/app_assets.dart';
import 'package:movie_app_ui/config/app_color.dart';
import 'package:movie_app_ui/config/text_style.dart';
import 'package:movie_app_ui/model/movie.dart';
import 'package:movie_app_ui/page/select_seat_page.dart';
import 'package:movie_app_ui/widget/selectCinema/custom_header.dart';
import 'package:movie_app_ui/widget/selectCinema/next_button.dart';
import 'package:movie_app_ui/widget/selectCinema/select_country.dart';


class SelectCinema extends StatelessWidget {
  const SelectCinema({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomHeader(size: size, content: 'Ralph Breaks The\nInternet',),
              SelectCountry(size: size),
              buildTitle('Choose Date'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                    days.map((e) => Builder(builder: (context){
                      return buildDate(size, e);
                    },)).toList(),
                ),
              ),
              buildTitle('Central Park CGV'),
              Container(
                margin: EdgeInsets.only(top: 8,bottom: 16),
                height: size.height / 15,
                child: ListView.builder(
                  itemBuilder: (context, index) => buildTime(size, index, timeStates_1),
                  itemCount: times.length,
                  scrollDirection: Axis.horizontal,
                  ),
                ),
              buildTitle('Kim Dong CGV'),
              Container(
                margin: EdgeInsets.only(top: 8,bottom: 16),
                height: size.height / 15,
                child: ListView.builder(
                  itemBuilder: (context, index) => buildTime(size, index, timeStates_2),
                  itemCount: times.length,
                  scrollDirection: Axis.horizontal,
                  ),
                ),
              buildTitle('American CGV'),
              Container(
                margin: EdgeInsets.only(top: 8,bottom: 16),
                height: size.height / 15,
                child: ListView.builder(
                  itemBuilder: (context, index) => buildTime(size, index, timeStates_3),
                  itemCount: times.length,
                  scrollDirection: Axis.horizontal,
                  ),
                ),
                NextButton(press: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SelectSeat()));
                },),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDate(Size size, String e) {
    return Container(
                    height: size.height / 8,
                    width: size.width / 5,
                    decoration: BoxDecoration(
                      color: _getColor(dateStates[days.indexOf(e)]),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(e,style: TxtStyle.heading3,),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text((20 + days.indexOf(e)).toString(),style: TxtStyle.heading3Medium),
                        ),
                      ],
                    ),
                  );
  }

  Container buildTime(Size size, int index, List<TicketStates> states) {
    return Container(
                margin: EdgeInsets.only(left: 24),
                width: size.width / 4,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _getColor(states[index]),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(times[index],style: TxtStyle.heading3Medium,),
              );
  }
  Color _getColor(TicketStates state) {
      switch(state) {
        case TicketStates.idle : {
          return DarkTheme.darkBackground;
        }
        case TicketStates.active : {
          return DarkTheme.blueMain;
        }
        case TicketStates.busy : {
          return DarkTheme.greyBackground;
        }
      }
      return DarkTheme.greyBackground;
    }

  Container buildTitle(String content) {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 24),
            child: Text(content,style: TxtStyle.heading2,),
          );
  }
}

