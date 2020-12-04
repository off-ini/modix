import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modix/size_config.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
            margin: EdgeInsets.only(left:defaultSize * 3, right:defaultSize * 3),
            padding: EdgeInsets.symmetric(
              horizontal: defaultSize,
              vertical: defaultSize / 4
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                icon: SvgPicture.asset("assets/icons/search_dark.svg"),
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.black)
              ),
            ),
        );
  }
}