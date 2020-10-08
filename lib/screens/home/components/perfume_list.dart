import 'package:flutter/material.dart';
import 'package:perfume_app_ui/constants/constants.dart';
import 'package:perfume_app_ui/data/data.dart';
import 'package:perfume_app_ui/models/perfume.dart';
import 'package:perfume_app_ui/screens/details/details_screen.dart';
import 'package:perfume_app_ui/widgets/rating_stars.dart';

class PerfumeList extends StatelessWidget {
  _buildPerfumeProducts(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Perfume perfume = perfumeProducts[index];

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailsScreen(perfume: perfume),
        ),
      ),
      child: Container(
        width: size.width * 0.5,
        margin: EdgeInsets.only(
          left: appPadding / 2,
          right: appPadding / 2,
          top: appPadding / 2,
          bottom: appPadding * 1.5,
        ),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 10.0,
                color: primaryColor.withOpacity(0.25))
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.all(appPadding * 1.2),
              child: Container(
                child: Image.asset(
                  perfume.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              height: size.height * 0.07,
              padding: EdgeInsets.all(appPadding / 2),
              decoration: BoxDecoration(
                  color: secondaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        perfume.name.toUpperCase(),
                        style: TextStyle(
                          color: secondaryColor,
                        ),
                      ),

                      // To display rating stars
                      RatingStars(perfume.rating),
                    ],
                  ),
                  Text(
                    '\$${perfume.price}',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.375,
      child: Padding(
        padding: EdgeInsets.only(top: appPadding / 2),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: perfumeProducts.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPerfumeProducts(context, index);
          },
        ),
      ),
    );
  }
}
