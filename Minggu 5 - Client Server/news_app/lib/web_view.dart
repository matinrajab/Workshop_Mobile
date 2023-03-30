import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget{
  static const routeName = '/article_web';

  final String url;
  const ArticleWebView({required this.url});

  @override
  Widget build(BuildContext context){
    WebViewController webViewController = WebViewController();
    return Scaffold(
      appBar: AppBar(
        title: Text('News App'),
      ),
      body: WebViewWidget(
          controller: webViewController
            ..loadRequest(Uri.parse(url))
      ),
    );
  }
}