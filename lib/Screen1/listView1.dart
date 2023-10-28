import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app/Screen1/Screen1class.dart';
import 'package:travel_news_app/Screen2/secondScreen.dart';

class listView1 extends StatelessWidget {
  const listView1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  secondScreen()), // Push the second screen onto the stack
        );
      },
      child: SizedBox(
        height: 304,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(
                right: 20,
              ),
              height: 304,
              width: 255,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.051),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 24.0,
                    spreadRadius: 0.0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 164,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/${grid[index].image}'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Flexible(
                    child: Text(
                      grid[index].description,
                      style: const TextStyle(
                        fontFamily: 'Gellix',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 19,
                              backgroundColor: Colors.lightBlue,
                              backgroundImage:
                                  AssetImage('assets/${grid[index].profile}')),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                grid[index].name,
                                style: const TextStyle(
                                  fontFamily: 'Gellix',
                                  color: Color(0xFF19202D),
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                grid[index].date,
                                style: const TextStyle(
                                  fontFamily: 'Gellix',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF9397A0),
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xFFEFF5F4),
                        ),
                        child: SvgPicture.asset(
                          'assets/share_icon.svg',
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
