import 'package:flutter/material.dart';
import 'package:newsapp/data/model/news_model.dart';

class InfoPage extends StatelessWidget {
  final Articles data;
  const InfoPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.author.toString()),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(data.title.toString()),
          Image.network(data.urlToImage.toString()),
          Text(data.description.toString()),
          Align(
            alignment: Alignment.centerRight,
            child: Text(data.publishedAt.toString()),
          )
        ],
      )),
    );
  }
}
