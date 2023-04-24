import 'package:dio/dio.dart';
import 'package:newsapp/core/config/dio_catch_error_conf.dart';
import 'package:newsapp/core/config/dio_config.dart';
import 'package:newsapp/data/model/news_model.dart';

class GetNewsService {
  static Future<dynamic> getNews({required String url}) async {
    try {
      Response response = await DioConfig.createRequest().get(url);
    if (response.statusCode == 200) {
      return NewsModel.fromJson(response.data);
    } else {
      return response.statusMessage.toString();
    }
    }on DioError catch (e) {
      return DioCatchErrorConfig.catchError(e);
    }
  }
}
