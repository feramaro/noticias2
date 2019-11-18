import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  String image;
  String nomeCategoria;
  Color cor;

  Categorias(this.nomeCategoria, this.image, this.cor);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: <Widget>[
          FadeInImage.assetNetwork(
              image: this.image,
              placeholder: '',
              fit: BoxFit.cover,
              width: 500.0,
              height: 100.0),
          Positioned(
            left: 160,
            right: 0,
            bottom: 40,
           // top: 40,
            child: Text(
              this.nomeCategoria,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: this.cor),
            ),
          )
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
    );
  }
}
