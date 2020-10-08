import 'package:flutter/material.dart';
import 'package:perfume_app_ui/constants/constants.dart';
import 'package:perfume_app_ui/models/perfume.dart';
import 'package:perfume_app_ui/screens/details/components/body.dart';


class DetailsScreen extends StatefulWidget {
  final Perfume perfume;

  const DetailsScreen({Key key, this.perfume}) : super(key: key);
  
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              elevation: 0.0,
              toolbarHeight: size.height * 0.08,
              leading: Padding(
                padding: EdgeInsets.only(left: appPadding),
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: appPadding),
                  child: IconButton(
                    icon: Icon(Icons.shopping_bag,),
                    onPressed: (){},
                  ),
                )
              ],
            ),

            //Body of the details Screen
            Body(widget.perfume),
          ],
        ),
      ),
    );
  }
}
