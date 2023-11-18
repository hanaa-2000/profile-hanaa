import 'package:azkar/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness:Brightness.light ,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              fontFamily: 'Tajawal',
              color: Colors.white
          ),
        ),
          backgroundColor: Colors.white,
          appBarTheme:const AppBarTheme(
            color: Colors.green,
         titleTextStyle: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.w500,
             fontFamily: 'Tajawal'
         ),
            centerTitle: true,
          ),
        ),
      home:const HomeScreen(),
    );
  }
}

