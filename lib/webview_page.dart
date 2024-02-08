import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  static const routeName = '/webview_Page';
  final String url;
  const WebViewPage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final myController = WebViewController()..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Web View Sam"),
      ),
      body: WebViewWidget(controller:myController),
    );
  }
}