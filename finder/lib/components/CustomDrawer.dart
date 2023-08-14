import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  final String currentPage;

  CustomDrawer({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      backgroundColor: Colors.white,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Text("findER")
          ),
          ListTile(
            title: InkWell(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.turn_right,
                      color: currentPage == "map" ?
                      Colors.blueAccent :
                      Colors.black,
                      size: 35,
                    )
                  ),
                  Text(
                    "주변 응급실 찾기",
                    style: TextStyle(
                      color: currentPage == "map" ?
                      Colors.blueAccent :
                      Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Noto Sans KR'
                    )
                  )
                ]
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/map');
              }
            )
          ),
          ListTile(
            title: InkWell(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Icon(
                        Icons.medical_information_outlined,
                        color: currentPage == "user" ?
                        Colors.blueAccent :
                        Colors.black,
                        size: 35,
                      )
                    ),
                    Text(
                      "문진표",
                      style: TextStyle(
                      color: currentPage == "user" ?
                        Colors.blueAccent :
                        Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Noto Sans KR'
                      )
                    )
                  ]
                )
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/user/list');
              }
            )
          ),
        ]
      ),
    );
  }
}