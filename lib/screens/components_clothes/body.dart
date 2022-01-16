import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/constraints.dart';

class Body extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Categories(),

    ],
    );
      }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>{
  List<String> categories = ["All","T-Shirts", "Dresses", "Shirts", "Shorts", "Pants", "Hoodies"];

  int selectedIndex = 0; //TODO: need to change the selected item
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );

  }
  Widget buildCategory (int index){
    return GestureDetector(
      onTap: (){
        selectedIndex = index;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
            categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index? kTextColor: kTextLightColor,
              ),

      ),
            Container(
              margin:  EdgeInsets.only(top: kDefaultPadding / 4),
              height: 2,
              width: 30,
              color: selectedIndex == index? Colors.black: Colors.transparent,
            )
          ],
        ),
      ),
    );

  }
}