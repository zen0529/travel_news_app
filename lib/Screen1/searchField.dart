import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xFFFFFFFF),
        ),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for article...',
                    hintStyle: TextStyle(fontFamily: 'Gellix', fontSize: 12),
                    contentPadding:
                        EdgeInsets.only(left: 13, top: 18, bottom: 17)),
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontFamily: 'Gellix'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF5474FD),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/search_icon.svg',
                ),
              ),
            )
          ],
        ));
  }
}
