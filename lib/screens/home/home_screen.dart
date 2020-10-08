import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfume_app_ui/constants/constants.dart';
import 'package:perfume_app_ui/screens/home/components/body.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    //To get the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(

      backgroundColor: primaryColor,

      //To get scroll view for small screen devices
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              elevation: 0.0,
              toolbarHeight: size.height * 0.08,
              leading: Padding(
                padding: EdgeInsets.only(left: appPadding),
                child: IconButton(
                  icon: Icon(Icons.short_text,size: 30.0,),
                  onPressed: (){},
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

            Body(),
          ],
        ),
      ),
    );
  }
}
