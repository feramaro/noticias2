import 'package:flutter/material.dart';
import 'package:noticias_2/widgetBuilder/categorias.dart';

class HomeCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: <Widget>[
          Categorias("Finanças", 'https://i.imgur.com/qTJ88Xs.jpg', Colors.black87),
          Categorias("Tecnologia", 'https://i.imgur.com/1YVY7yJ.jpg', Colors.white),
          Categorias("Esporte", "https://i.imgur.com/juLwzVF.jpg", Colors.white)
        ],
      ),
    ));
  }
}
