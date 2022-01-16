import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/clothing.dart';
import 'package:flutter_travel_ui/screens/home_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';

Box box;
Future<void> main() async {
  await Hive.initFlutter();
  box = await Hive.openBox('clothing');
  Hive.registerAdapter(clothingAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFF3F5F7),
      ),
      home: HomeScreen(),
    );
  }
}
