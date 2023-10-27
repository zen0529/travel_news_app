import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_news_app/Screen1/firstScreen.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const TravelNews(), // Wrap your app
      ),
    );

class TravelNews extends StatefulWidget {
  const TravelNews({super.key});

  @override
  State<TravelNews> createState() => _TravelNewsState();
}

class _TravelNewsState extends State<TravelNews> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFFCFCFC)),
        debugShowCheckedModeBanner: false,
        home: const FirstScreen());
  }
}
