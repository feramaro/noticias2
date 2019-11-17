import 'package:flutter/material.dart';
import 'package:noticias_2/services/httpTopHeadLines.dart';
import 'package:noticias_2/widgetBuilder/cards.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}


class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: <Widget>[
            infoFuture()
          ],
        ),
      ),
    );
  }

  

  Widget _criarLista(context, snapshot) {
    return ListView.builder(
      
      itemCount: 15,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: CreateCard(
              snapshot.data["articles"][index]["urlToImage"],
              snapshot.data["articles"][index]["title"],
              snapshot.data["articles"][index]["description"]),
          onTap: () {},
        );
      },
    );
  }

  Widget infoFuture() {
    return Expanded(
      child: FutureBuilder(
        future: Conexao().getNoticias(),
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
              if(snapshot.hasError){
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