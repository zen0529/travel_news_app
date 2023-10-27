import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/Screen1/Screen1class.dart';

class listView2 extends StatelessWidget {
  const listView2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(9),
            margin: const EdgeInsets.only(
              right: 20,
            ),
            width: 208,
            height: 88,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.051),
                  offset: const Offset(0.0, 3.0),
                  blurRadius: 24.0,
                  spreadRadius: 0.0,
                )
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  padding: const EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/${Short[index].image}'),
                    ),
                  ),
                  child: SvgPicture.asset(
                    'assets/play_icon.svg',
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Short[index].Description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontFamily: "Gellix",
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF19202D)),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/eye_icon.svg',
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            Short[index].NumberOfViews,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF9397A0)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
