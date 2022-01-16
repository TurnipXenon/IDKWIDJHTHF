import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/components_clothes/body.dart';

class MyClothes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold (
      appBar: buildAppBar(),
      body: Body(),
    );

  }

  AppBar buildAppBar(){
    return AppBar(
      title: Text("My Clothes"),
      backgroundColor: Colors.deepPurpleAccent,
      elevation: 0,
      automaticallyImplyLeading: true,
      leading:
      IconButton (icon: Icon(Icons.arrow_back), onPressed:(){},),
    );

  }


}