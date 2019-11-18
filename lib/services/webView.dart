import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OpenWebWiew extends StatelessWidget {

  String title;
  String url;

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  OpenWebWiew(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(this.title, textAlign: TextAlign.center,),
        backgroundColor: Colors.black,
      ),
      body: WebView(
        initialUrl: this.url,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){
          _controller.complete(webViewController);
        },
      ),
      
    );
  }
}