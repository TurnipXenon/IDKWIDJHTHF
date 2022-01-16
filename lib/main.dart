import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/generic_item_selector_screen.dart';
import 'package:flutter_travel_ui/screens/home_screen.dart';
import 'package:flutter_travel_ui/screens/my_clothes_screen.dart';
import 'package:flutter_travel_ui/screens/outfit_screen.dart';

import 'constraints.dart';

void main() => runApp(MyApp());

// todo(TurnipXenon): remove debug banner
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: MyClothes(),
    );
  }
}
