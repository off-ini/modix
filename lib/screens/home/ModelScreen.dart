import 'package:flutter/material.dart';
import 'package:modix/components/TextTitle.dart';

class ModelScreen extends StatelessWidget {
  const ModelScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TitleText(title: "Models",),
      ),
    );
  }
}