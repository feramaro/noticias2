import 'package:flutter/material.dart';
import 'package:noticias_2/pages/homeApp.dart';
import 'package:noticias_2/pages/homeCategorias.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeApp(),
    HomeCategorias()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Noticias2"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Início")),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("Categorias"))
        ]
      ),
    );
  }

  void onTabTapped(index){
    setState(() {
      _currentIndex = index;
    });
  }
}
