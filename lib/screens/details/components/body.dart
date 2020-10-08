import 'package:flutter/material.dart';
import 'package:perfume_app_ui/models/perfume.dart';
import 'package:perfume_app_ui/screens/details/components/details_background.dart';
import 'package:perfume_app_ui/screens/details/components/details_layout.dart';

class Body extends StatefulWidget {

  final Perfume perfume;
  Body(this.perfume);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Gradient Background
        Background(),

        //Layout of the details screen
        DetailsLayout(widget.perfume),
      ],
    );
  }
}
