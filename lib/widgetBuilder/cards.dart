import 'package:flutter/material.dart';

class CreateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Card(
        child: Stack(
          children: <Widget>[
            Image.network(
              "https://picsum.photos/id/429/536/354",
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Titulo da Noticia: FLUTTER DOMINA O MUNDO CARAI",
                style: TextStyle(
                  shadows: [
                    Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0))
                  ],
                ),
              ),
            )
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
