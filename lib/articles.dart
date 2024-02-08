import 'dart:convert';

class Articles {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  // ubah data map json menjadi objek

  factory Articles.fromJson(Map<String, dynamic> articles) => Articles(
        author: articles['author'],
        title: articles['title'],
        description: articles['description'],
        url: articles['url'],
        urlToImage: articles['urlToImage'],
        publishedAt: articles['publishedAt'],
        content: articles['content'],
      );
}

List<Articles> parsedArticles(String? json) {
  if (json == null) {
    return [];
  }

  final List parsed = jsonDecode(json);
  return parsed.map((json) => Articles.fromJson(json)).toList();
}