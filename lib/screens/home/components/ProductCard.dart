import 'package:flutter/material.dart';
import 'package:modix/components/TextTitle.dart';
import 'package:modix/constants.dart';
import 'package:modix/models/Product.dart';
import 'package:modix/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, @required this.product, this.press}) : super(key: key);
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: press,
      child:Container(
            width: defaultSize * 14.5,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(30)
            ),
            child: AspectRatio(
              aspectRatio: 0.693,
              child: Column(children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif", 
                    image: product.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultSize),
                  child: TitleText(title:product.title),
                ),
                SizedBox(height: defaultSize / 2,),
                Text("\$${product.price}"),
                Spacer()
              ],),
            ),
        ));
  }
}