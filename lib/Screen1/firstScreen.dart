import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/Screen1/listView1.dart';
import 'package:travel_news_app/Screen1/listView2.dart';
import 'package:travel_news_app/Screen1/profile.dart';
import 'package:travel_news_app/Screen1/searchField.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

int indexSelected = 0;

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 103,
        alignment: Alignment.center,
        child: BottomNavigationBar(
            currentIndex: indexSelected,
            onTap: (index) {
              setState(() {
                indexSelected = index;
              });
            },
            iconSize: 19,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: indexSelected == 0
                        ? SvgPicture.asset('assets/home_selected_icon.svg')
                        : SvgPicture.asset('assets/home_unselected_icon.svg'),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: indexSelected == 1
                        ? SvgPicture.asset('assets/bookmark_selected_icon.svg')
                        : SvgPicture.asset(
                            'assets/bookmark_unselected_icon.svg'),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: indexSelected == 2
                        ? SvgPicture.asset(
                            'assets/notification_selected_icon.svg')
                        : SvgPicture.asset(
                            'assets/notification_unselected_icon.svg'),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: indexSelected == 3
                        ? SvgPicture.asset('assets/profile_selected_icon.svg')
                        : SvgPicture.asset(
                            'assets/profile_unselected_icon.svg'),
                  ),
                  label: '')
            ]),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 31, right: 30, top: 25),
          child: SafeArea(
            child: Column(
              children: [
                const profile(),
                const SizedBox(height: 32),
                const Search(),
                const SizedBox(height: 15),
                Container(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '#Health',
                        style: TextStyle(
                            color: Color(0xFF9397A0),
                            fontFamily: 'Gellix',
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Text('#Music',
                          style: TextStyle(
                              color: Color(0xFF9397A0),
                              fontFamily: 'Gellix',
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      Text('#Technology',
                          style: TextStyle(
                              color: Color(0xFF9397A0),
                              fontFamily: 'Gellix',
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                      Text('#Sports',
                          style: TextStyle(
                              color: Color(0xFF9397A0),
                              fontFamily: 'Gellix',
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const listView1(),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Short For You',
                      style: TextStyle(
                          color: Color(0xFF19202D),
                          fontFamily: 'Gellix',
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Color(0xFF5474FD),
                          fontFamily: 'Gellix',
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(height: 19),
                const listView2()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
