import 'package:flutter/material.dart';
import 'package:modix/models/Categories.dart';
import 'package:modix/screens/home/components/CategoryCard.dart';

class Categories extends StatelessWidget {
  const Categories({Key key, this.categories}) : super(key: key);
  final List<Category> categories;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: List.generate(categories.length, (index) => CategoryCard(category: categories[index]))
            ,),
        );
  }
}