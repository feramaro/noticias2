import 'package:flutter/material.dart';
import 'package:noticias_2/services/webView.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PageNoticia extends StatelessWidget {
  final Map _dadosNoticia;

  PageNoticia(this._dadosNoticia);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_dadosNoticia["title"]),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.network(this._dadosNoticia["urlToImage"]),
              SizedBox(height: 20.0),
              Text(
                this._dadosNoticia["title"],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              Text(
                this._dadosNoticia["publishedAt"],
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(this._dadosNoticia["content"]),
              ),
              FlatButton(
                  color: Colors.blue,
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OpenWebWiew(
                              this._dadosNoticia["source"]["name"],
                              this._dadosNoticia["url"]),
                        ),
                      ),
                  child: Text(
                    "Clique aqui para ver a noticia completa",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
