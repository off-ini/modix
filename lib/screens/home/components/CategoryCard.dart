import 'package:flutter/material.dart';
import 'package:modix/components/TextTitle.dart';
import 'package:modix/constants.dart';
import 'package:modix/models/Categories.dart';
import 'package:modix/size_config.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.category
  }) : super(key: key);
  final Category category;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child:SizedBox(
            width: defaultSize * 20.5,
            child: AspectRatio(
              aspectRatio: 0.83,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                //Container(
                //  color: Colors.blueAccent,
                //),
                ClipPath(
                  clipper: CategorieCustomSharp(),
                  child:AspectRatio(
                    aspectRatio: 1.025, 
                    child: Container(
                      padding: EdgeInsets.all(defaultSize * 2),
                      color: kSecondaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        TitleText(title:category.title, ),
                        SizedBox(width: defaultSize,),
                        Text(
                          "${category.numOfProducts} + products",
                          style: TextStyle(
                            color: kTextColor.withOpacity(0.6),
                          )
                        )
                      ],),
                    ),
                  )
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AspectRatio(
                    aspectRatio: 1.15,
                    child: FadeInImage.assetNetwork(
                      placeholder: "assets/spinner.gif", 
                      image: category.image
                    ),
                  )
                )
              ],),
            ),
      ));
  }
}

class CategorieCustomSharp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
      Path path = Path();
      double width = size.width;
      double height = size.height;
      double cornerSize = 30;

      path.lineTo(0, height - cornerSize);
      path.quadraticBezierTo(0, height, cornerSize, height);
      path.lineTo(width - cornerSize, height);
      path.quadraticBezierTo(width, height, width, height - cornerSize);

      path.lineTo(width, cornerSize);
      path.quadraticBezierTo(width, 0, width - cornerSize, 0);
      path.lineTo(cornerSize, cornerSize * 0.75);
      path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);

      path.close();

      return path;
  }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}