import 'package:flutter/material.dart';
import 'package:flutter_news_app/articles.dart';
import 'package:flutter_news_app/detail_page.dart';
import 'package:flutter_news_app/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: MainPage.routeName,
      routes: {
        MainPage.routeName: (context) => const MainPage(),
        DetailPage.routeName: (context) => DetailPage(
            articles: ModalRoute.of(context)?.settings.arguments as Articles),
      },
    );
  }
}
