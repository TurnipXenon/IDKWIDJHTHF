import 'package:flutter_travel_ui/models/clothing.dart';
import 'package:hive/hive.dart';
part 'outfit.g.dart';

@HiveType(typeId: 2)
class outfit {
  @HiveField(0)
  final List<clothing> clothes;
  @HiveField(1)
  final String category; //Ex. Jeans, Shirt, Pants, etc
  @HiveField(2)
  final int colour;
  @HiveField(3)
  final List<String> tags; //Ex. Winter, weekend, Formal, etc

  outfit(this.clothes, this.category, this.colour, this.tags);
}
