import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/profile.png',
          height: 49,
          width: 49,
        ),
        const SizedBox(width: 16),
        const Column(
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF19202D)),
            ),
            SizedBox(height: 7),
            Text(
              'Monday, 3 October',
              style: TextStyle(
                  fontFamily: 'Gellix',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF9397A0)),
            ),
          ],
        )
      ],
    );
  }
}
