import 'package:http/http.dart' as http;
import 'dart:convert';

class Conexao {
  
  int pagina;

  Conexao(this.pagina);

  Future<Map> getNoticias() async {
    http.Response response;

    String url =
        "https://newsapi.org/v2/top-headlines?country=br&page=$pagina&apiKey=b7edad515c87412faee96fcc2262226f";

    response = await http.get(url);

    return json.decode(response.body);
  }
}
