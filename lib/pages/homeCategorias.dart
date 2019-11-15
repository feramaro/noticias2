import 'package:flutter/material.dart';
import 'package:noticias_2/widgetBuilder/categorias.dart';

class HomeCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Categorias("Finanças", 'images/bg_financas.jpg'),
          Categorias("Tecnologia", 'images/bg_tecnologia.jpg'),
          Categorias("Esporte", "images/bg_esportes.jpg")
        ],
      ),
    );
  }
}