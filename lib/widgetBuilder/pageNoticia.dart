import 'package:flutter/material.dart';

class PageNoticia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo da noticia"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.asset('images/bg_tecnologia.jpg'),
              SizedBox(height: 20.0),
              Text(
                "Titulo da Noticia",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                "25/01/1999 00:00",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                    "Corpo da noticia, Corpo da noticia, Corpo da noticia, Corpo da noticia"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
