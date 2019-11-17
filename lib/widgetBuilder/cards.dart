import 'package:flutter/material.dart';

class CreateCard extends StatelessWidget {
  String imagem;
  String titulo;
  String corpo;

  CreateCard(this.imagem, this.titulo, this.corpo);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: <Widget>[
          FadeInImage.assetNetwork(
            placeholder: '',
            image: this.imagem,
            fit: BoxFit.cover,
            width: 500.0,
            height: 210.0,
          ),
          Positioned(
            left: 15,
            bottom: 15,
            right: 0,
            child: Text(
              this.titulo,
              style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    Shadow(offset: Offset(-1.5, -1.5), color: Colors.black)
                  ],
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
    );
  }
}

//https://picsum.photos/id/429/536/354
