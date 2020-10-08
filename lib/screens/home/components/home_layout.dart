import 'package:flutter/material.dart';
import 'package:perfume_app_ui/constants/constants.dart';
import 'package:perfume_app_ui/screens/home/components/perfume_list.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.18,
          ),
          Text(
            'Royal',
            style: TextStyle(
              fontSize: 55.0,
              color: secondaryColor.withOpacity(0.6),
              fontFamily: 'Canvas',
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'Quality',
            style: TextStyle(
              fontSize: 55.0,
              color: secondaryColor.withOpacity(0.6),
              fontFamily: 'Poppins',
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            'Energtic aromatic fougere\nfrance for all the way ypu play',
            style: TextStyle(
              fontSize: 16.0,
              color: secondaryColor.withOpacity(0.4),
              height: 2.0,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Royal Perfumes',
                style: TextStyle(
                  fontSize: 24.0,
                  color: secondaryColor.withOpacity(0.7),
                  fontFamily: 'Canvas',
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: secondaryColor.withOpacity(0.7),
              ),
              SizedBox.shrink()
            ],
          ),

          // list view of perfume products
          PerfumeList(),

        ],
      ),
    );
  }
}
