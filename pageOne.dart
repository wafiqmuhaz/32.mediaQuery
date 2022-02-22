// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class myHome extends StatefulWidget {
  static const root = "/one";

  @override
  _myHomeState createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  @override
  Widget build(BuildContext context) {
    final mediaqueryH = MediaQuery.of(context).size.height;
    final mediaqueryW = MediaQuery.of(context).size.width;

    final myAppbar = AppBar(
      centerTitle: true,
      title: Text('Flutter Localization'),
    );

    final finalH = mediaqueryH -
        myAppbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: (isLandscape)
            ? Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: finalH * 0.5,
                    width: mediaqueryW,
                    color: Colors.amber,
                  ),
                  Container(
                    height: finalH * 0.5,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return GridTile(
                          child: Container(
                            color: Color.fromARGB(
                              255,
                              Random().nextInt(256),
                              Random().nextInt(256),
                              Random().nextInt(256),
                            ),
                          ),
                        );
                      },
                      itemCount: 100,
                    ),
                  ),
                ],
              )
            : Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: finalH * 0.3,
                    width: mediaqueryW,
                    color: Colors.amber,
                  ),
                  Container(
                    height: finalH * 0.7,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(),
                          title: Text("HALLO WORLD...!"),
                        );
                      },
                      itemCount: 100,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
