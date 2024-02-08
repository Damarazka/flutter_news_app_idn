import 'package:flutter/material.dart';
import 'package:flutter_news_app/articles.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main_page';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString('articles.json'),
          builder: (context, snapshot) {
            final List<Articles> articles = parsedArticles(snapshot.data);
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return _buildArticleItem(context, articles[index]);
                });
          }),
    );
  }
}

Widget _buildArticleItem(BuildContext context, Articles articles) {
  return ListTile(
    leading: Image.network(articles.urlToImage,
        width: 100,
        errorBuilder: (context, error, stackTrace) => const Icon(Icons.error)),
    title: Text(articles.title),
    subtitle: Text(articles.author),
  );
}