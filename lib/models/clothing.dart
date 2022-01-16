import 'dart:typed_data';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class clothing {
  @HiveField(0)
  final Uint8List imagePath;
  @HiveField(1)
  final String category; //Ex. Jeans, Shirt, Pants, etc
  @HiveField(2)
  final List<String> tags; //Ex. Winter, weekend, Formal, etc

  clothing(this.imagePath, this.category, this.tags);
}

const TOPPER = "topper";
const TOP = "top";
const BAG = "bag";
const BOTTOM = "bottom";
const FOOTWEAR = "footwear";

// todo(TurnipXenon): replace once actual database comes
List<clothing> clothings = [
  clothing(
      Uint8List(0),
      TOPPER,
      ["winter", "weekend", "formal"]
  ),
  clothing(
      Uint8List(0),
      TOP,
      ["summer", "weekend", "informal"]
  ),
  clothing(
      Uint8List(0),
      BOTTOM,
      ["spring", "weekdays", "formal"]
  ),
  clothing(
      Uint8List(0),
      BAG,
      ["work", "formal"]
  ),
  clothing(
      Uint8List(0),
      BOTTOM,
      ["fall", "informal"]
  ),
  clothing(
      Uint8List(0),
      FOOTWEAR,
      ["weekdays", "formal"]
  ),
  clothing(
      Uint8List(0),
      TOPPER,
      ["winter", "weekend", "formal"]
  ),
  clothing(
      Uint8List(0),
      TOP,
      ["summer", "weekend", "informal"]
  ),
  clothing(
      Uint8List(0),
      BOTTOM,
      ["spring", "weekdays", "formal"]
  ),
  clothing(
      Uint8List(0),
      BAG,
      ["work", "formal"]
  ),
  clothing(
      Uint8List(0),
      BOTTOM,
      ["fall", "informal"]
  ),
  clothing(
      Uint8List(0),
      FOOTWEAR,
      ["weekdays", "formal"]
  ),
];
