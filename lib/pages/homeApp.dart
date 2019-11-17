import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noticias_2/services/httpCon.dart';
import 'package:noticias_2/widgetBuilder/cards.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int pageNoticia = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            infoFuture(),
          ],
        ),
      ),
    );
  }

  int _getCount(List data) {
    return data.length + 1;
  }

  Widget _criarLista(context, snapshot) {
    return ListView.builder(
      itemCount: _getCount(snapshot.data["articles"]),
      itemBuilder: (context, index) {
        if (index < snapshot.data["articles"].length) {
          return GestureDetector(
            child: CreateCard(
                snapshot.data["articles"][index]["urlToImage"] == null
                    ? ("https://semantic-ui.com/images/wireframe/image.png")
                    : snapshot.data["articles"][index]["urlToImage"],
                snapshot.data["articles"][index]["title"],
                snapshot.data["articles"][index]["description"]),
            onTap: () {},
          );
        } else {
          return Container(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.arrowLeft),
                        onPressed: () {
                          if (pageNoticia > 1) {
                            pageNoticia--;
                            setState(() {
                              _criarLista(context, snapshot);
                            });
                          }
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.arrowRight),
                        onPressed: () {
                          if (pageNoticia < 2) {
                            pageNoticia++;
                            setState(() {
                              _criarLista(context, snapshot);
                            });
                          }
                        },
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        }
      },
    );
  }

  Widget infoFuture() {
    return Expanded(
      child: FutureBuilder(
        future: Conexao(pageNoticia).getNoticias(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Container(
                alignment: Alignment.center,
                child: Text("Não há conexão com a internet"),
              );
              break;
            case ConnectionState.waiting:
              return Container(
                alignment: Alignment.center,
                child: Text("Carregando..."),
              );
              break;
            default:
              if (snapshot.hasError) {
                return Container(
                  alignment: Alignment.center,
                  child: Text("Erro desconhecido."),
                );
              } else {
                return _criarLista(context, snapshot);
              }
          }
        },
      ),
    );
  }
}
