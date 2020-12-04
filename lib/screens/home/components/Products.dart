import 'package:flutter/material.dart';
import 'package:modix/models/Product.dart';
import 'package:modix/screens/home/components/ProductCard.dart';
import 'package:modix/size_config.dart';

class Products extends StatelessWidget {
  const Products({Key key, this.products}) : super(key: key);
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child:GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: SizeConfig.orientation == Orientation.portrait ? 2 : 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.693
              ),
              itemCount: products.length,
              itemBuilder: (context, index) => ProductCard(product: products[index], press: () {}),
            )
      );
  }
}
