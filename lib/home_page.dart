import 'package:flutter/material.dart';
import 'package:novox_tech_app/colors/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UserColors.appBarColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(),

            Padding(
              padding: EdgeInsetsDirectional.only(end: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good morning...",
                    style: TextStyle(
                      color: UserColors.whiteColor,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Sarah Johnson",
                    style: TextStyle(
                      color: UserColors.whiteColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.logout, color: UserColors.whiteColor),
          ],
        ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(4),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(top: 20, bottom: 20, start: 20),
            child: Text("My Appoinments", style: TextStyle(fontSize: 17)),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: UserColors.boxColor,
            ),
            child: Column(
              children: [
                Text("deep cleaning Facial",),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
