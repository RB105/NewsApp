import 'package:flutter/material.dart';
import 'package:newsapp/data/model/news_model.dart';

class NewsBuilder extends StatelessWidget {
  final List<Articles> list;
  const NewsBuilder({super.key,required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:  list.length,
      itemBuilder: (context, index) {
      return ListTile(
        title: Text(list[index].author.toString()),
      );
    },);
  }
}