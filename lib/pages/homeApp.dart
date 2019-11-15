import 'package:flutter/material.dart';
import 'package:noticias_2/widgetBuilder/cards.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            CreateCard(),
            CreateCard()
          ],
        ),
      ),
    );
  }
}