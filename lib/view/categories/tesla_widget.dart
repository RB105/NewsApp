import 'package:flutter/material.dart';
import 'package:newsapp/core/constants/project_urls.dart';
import 'package:newsapp/core/widgets/news_builder.dart';
import 'package:newsapp/data/model/news_model.dart';
import 'package:newsapp/data/service/get_news_service.dart';


class TeslaNewsWidget extends StatelessWidget {
  const TeslaNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetNewsService.getNews(url: ProjectUrls.teslaUrl),
      builder: (BuildContext context,AsyncSnapshot snapshot) {
      if (!snapshot.hasData) {
        return const Center(child: CircularProgressIndicator(),);
      }else if(snapshot.hasError){
        return Center(child: Text(snapshot.error.toString()),);
      } else {
        NewsModel data = snapshot.data as NewsModel;
        return NewsBuilder(list: data.articles!);
      }
    },);
  }
}