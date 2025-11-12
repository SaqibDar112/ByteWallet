import 'package:fintechapp/constants/constants.dart';
import 'package:fintechapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white38,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: DeviceFrame(
              device: Devices.ios.iPhone13,
              screen: MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  fontFamily: "PlusJakarta",
                  scaffoldBackgroundColor: const Color(0XFFF3F3F3),
                  textTheme: const TextTheme(
                    bodyMedium: TextStyle(color: Fblack),
                  ),
                ),
                home: const HomePage(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
