import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/Screen1/firstScreen.dart';
import 'package:travel_news_app/Screen3.dart/thirdScreen.dart';

int indexSelected = 0;

class secondScreen extends StatelessWidget {
  const secondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 110,
        alignment: Alignment.center,
        child: BottomNavigationBar(
            currentIndex: indexSelected,
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
      body: Stack(
        children: [
          Container(
            height: 666.18,
            child: Image.asset(
              'assets/image2.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 30, left: 30, right: 30, bottom: 428),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstScreen()));
                    },
                    child: Image.asset('assets/backArrow.png')),
                Image.asset('assets/Bookmark2.png'),
              ],
            ),
          ),
          Positioned(
            top: 350,
            right: 153,
            left: 153,
            child: Image.asset(
              'assets/Dotted.png',
            ),
          ),
          Positioned(
            top: 395,
            child: Container(
              height: 453,
              //height: 600,
              width: 390,
              decoration: const BoxDecoration(
                  color: Color(0xFFFCFCFC),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                      topRight: Radius.circular(55))),
              child: Container(
                height: 133,
                width: 139,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    //color: Colors.amber,
                    ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 27),
                      const Text(
                        'Unravel mysteries\nof the Maldives',
                        style: TextStyle(
                          fontFamily: 'Gellix',
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                          color: Color(0xFF19202D),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const thirdScreen()));
                        },
                        child: Container(
                          height: 54,
                          width: 315,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFFFCFCFC),
                              border: Border.all(
                                  width: 1.0,
                                  style: BorderStyle.solid,
                                  color: const Color(0xFFEEEEEE))),
                          child: Row(
                            children: [
                              Image.asset('assets/vectorScreen2.png'),
                              const SizedBox(width: 13),
                              const Text(
                                'Keanu Carpent May 17 • 8 min read',
                                style: TextStyle(
                                    fontFamily: 'Gellix',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13,
                                    color: Color(0xFF9397A0)),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 21),
                      const Text(
                        'Just say anything, George, say what ever\'s\nnatural, the first thing that comes to your\nmind. Take that you mutated son-of-a-bitch.\nMy pine, why you. You space bastard, you\nkilled a pine. You do? Yeah, it\'s 8:00. Hey,\nMcFly, I thought I told you never ',
                        style: TextStyle(
                            fontFamily: 'Gellix',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF19202D)),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
