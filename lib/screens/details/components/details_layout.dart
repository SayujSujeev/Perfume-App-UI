import 'package:flutter/material.dart';
import 'package:perfume_app_ui/constants/constants.dart';
import 'package:perfume_app_ui/models/perfume.dart';
import 'package:perfume_app_ui/widgets/rating_stars.dart';

class DetailsLayout extends StatefulWidget {
  final Perfume perfume;

  DetailsLayout(this.perfume);

  @override
  _DetailsLayoutState createState() => _DetailsLayoutState();
}

class _DetailsLayoutState extends State<DetailsLayout> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * 0.35,
          width: size.width,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50.0),
                bottomLeft: Radius.circular(50.0),
              )),
          child: Image(
            image: AssetImage(widget.perfume.imageUrl),
          ),
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: appPadding / 4),
              child: Container(
                height: size.height * 0.12,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.perfume.qty.toString(),
                      style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'ml',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: appPadding / 4),
              child: Container(
                height: size.height * 0.12,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.perfume.pure.toString() + '%',
                      style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'pure',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: appPadding / 4),
              child: Container(
                height: size.height * 0.12,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.perfume.sex,
                      style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'sex',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: appPadding / 4),
              child: Container(
                height: size.height * 0.12,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.perfume.brand,
                      style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'brand',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.perfume.name,
                style: TextStyle(
                  color: secondaryColor.withOpacity(0.6),
                  fontFamily: 'Canvas',
                  fontSize: 24,
                ),
              ),
              RatingStars(widget.perfume.rating),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: appPadding),
          child: Text(
            widget.perfume.description,
            style: TextStyle(
              color: secondaryColor.withOpacity(0.6),
              height: 1.5,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.08,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: appPadding * 1.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: size.height * 0.08,
                width: size.width * 0.18,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                      )
                    ]),
                child: Icon(
                  Icons.add,
                  color: secondaryColor,
                ),
              ),
              Container(
                  height: size.height * 0.08,
                  width: size.width * 0.58,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 20.0,
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: appPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '\$',
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                            Text(
                              widget.perfume.price.toString(),
                              style: TextStyle(
                                  color: secondaryColor, fontSize: 30),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: textColor,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
