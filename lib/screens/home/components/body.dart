import 'package:flutter/material.dart';
import 'package:perfume_app_ui/screens/home/components/home_background.dart';
import 'package:perfume_app_ui/screens/home/components/home_layout.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        //contain background gradient and image
        HomeBackground(),

        //Text and the list view of perfumes
        HomeLayout(),
      ],
    );
  }
}
