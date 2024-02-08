import 'package:flutter/material.dart';
import 'package:flutter_news_app/articles.dart';

class DetailPage extends StatelessWidget {
  static const routeName = '/detail_page';
  final Articles articles;
  const DetailPage({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articles.title),
      ),
      body: Column(
        children: [
          Image.network(articles.urlToImage),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(articles.title),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 10,
                  indent: 10,
                  endIndent: 10,
                ),
                Text(articles.author),
                Text(
                  articles.publishedAt,
                  style: const TextStyle(color: Colors.black45),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 10,
                  indent: 10,
                  endIndent: 10,
                ),
                Text(articles.content),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.open_in_browser),
                      label: const Text('Baca selengkapnya SAMMM??')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
