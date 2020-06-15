import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 1,
//        backgroundColor: Color.fromRGBO(255, 20, 168, 1),
        backgroundColor: Color(0xffF66D70),
        title: Text(
          "App Bar App 1",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.add,
          ),
          Icon(
            Icons.photo_camera,
          ),
          PopupMenuButton(
            onSelected: (value) => print(value),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "Menu 1",
                  child: Text(
                    "Menu 1",
                  ),
                ),
                PopupMenuItem(
                  value: "Menu 2",
                  child: Text(
                    "Menu 2",
                  ),
                ),
              ];
            },
          ),
        ],
      ),
    );
  }
}
