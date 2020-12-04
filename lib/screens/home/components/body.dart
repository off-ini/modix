import 'package:flutter/material.dart';
import 'package:modix/components/SearchBox.dart';
import 'package:modix/components/TextTitle.dart';
import 'package:modix/screens/home/components/Categories.dart';
import 'package:modix/screens/home/components/Products.dart';
import 'package:modix/services/fetchCategories.dart';
import 'package:modix/services/fetchProducts.dart';
import 'package:modix/size_config.dart';


class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
        child: SafeArea(
          child:Column(children: [
          SearchBox(),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => 
              snapshot.hasData ? 
              Categories(categories: snapshot.data) :
              Center(
                child: Image.asset("assets/ripple.gif"),
              ),
          ),
          Divider(height: 5,),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(title: "Recommanded For You"),
          ),
          FutureBuilder(
            future: fetchProducts(),
            builder: (context, snapshot){
              return snapshot.hasData ?
            Products(products: snapshot.data,):
            Center(
                child: Image.asset("assets/ripple.gif"),
            );
            } 
          )
        ],)
        ),
    );
  }
}