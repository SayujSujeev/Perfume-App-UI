import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomeBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        //image
        Align(
          alignment: Alignment(1.3,0.0),
          child: Container(
            height: size.height * 0.45,

            //To rotate the image
            child: Transform.rotate(
              angle: 180 * math.pi /100,
              child: Image(
                image: AssetImage('assets/images/perfume1.png'),
              ),
            ),
          ),
        ),

        //gradient
        //Gradient is not looking good because of emulator it will be good in real devices
        Container(
          height: size.height * 0.88,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.grey[850], Colors.grey[900],Colors.black12],
            )
          ),
        )
      ],
    );
  }
}
