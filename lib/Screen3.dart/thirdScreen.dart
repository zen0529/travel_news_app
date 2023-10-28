import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Screen3class.dart';

class thirdScreen extends StatefulWidget {
  const thirdScreen({super.key});

  @override
  State<thirdScreen> createState() => _thirdScreenState();
}

bool isFollowing = false;

class _thirdScreenState extends State<thirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! < 0) {
            // Swiped left, navigate back
            Navigator.of(context).pop();
          }
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 51, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/ProfilePic.png'),
                    const SizedBox(width: 15),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Elly Byers',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF19202D)),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Author & Writer',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF19202D)),
                        )
                      ],
                    ),
                    const SizedBox(width: 36),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isFollowing = !isFollowing;
                        });
                      },
                      child: Container(
                        height: 42,
                        width: 109,
                        decoration: BoxDecoration(
                            color: isFollowing
                                ? const Color(0xFFFFFFFF)
                                : const Color(0xFF5474FD),
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: Text(
                          isFollowing ? 'Following' : 'Follow',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: isFollowing
                                  ? const Color(0xFF000000)
                                  : const Color(0xFFFFFFFF)),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Every piece of chocolate I ever ate is getting back\nat me.. desserts are very revengeful..',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF9397A0),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 33),
                Container(
                  height: 95,
                  width: 315,
                  decoration: BoxDecoration(
                    color: const Color(0xFF19202D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '54.21k',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Followers',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0xFFC1D4F9),
                        ),
                      ),
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '2.11k',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Posts',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0xFFC1D4F9),
                        ),
                      ),
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '36.40k',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Following',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Elly\'s Post',
                      style: TextStyle(
                          color: Color(0xFF19202D),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Color(0xFF5474FD),
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                // const SizedBox(
                //   height: 24,
                // ),
                SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 90,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 24,
                                    spreadRadius: 0,
                                    offset: const Offset(0, 3),
                                    color: Colors.blue.withOpacity(0.051),
                                  )
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  Temple[index].image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Temple[index].NewsType,
                                    style: const TextStyle(
                                        color: Color(0xFF9397A0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    Temple[index].Description,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Color(0xFF19202D),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  const SizedBox(
                                    height: 10.4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/calendar_icon.svg',
                                          ),
                                          const SizedBox(
                                            width: 7.68,
                                          ),
                                          Text(
                                            Temple[index].Date,
                                            style: const TextStyle(
                                                color: Color(0xFF9397A0),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/time_icon.svg',
                                          ),
                                          const SizedBox(
                                            width: 7.46,
                                          ),
                                          Text(
                                            Temple[index].Time,
                                            style: const TextStyle(
                                                color: Color(0xFF9397A0),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 30,
                // ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular From Elly',
                      style: TextStyle(
                          color: Color(0xFF19202D),
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 143,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 143,
                        width: 248,
                        margin: const EdgeInsets.only(
                          right: 15,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            child: Image.asset(
                              Pic[index].image,
                              fit: BoxFit.cover,
                            )),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
