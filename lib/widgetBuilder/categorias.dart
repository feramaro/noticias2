import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {

  String image;
  String nomeCategoria;

  Categorias(this.nomeCategoria, this.image);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 235,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: <Widget>[
              Image.asset(
                this.image,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  this.nomeCategoria,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
                ),
              )
            ],
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }
}
