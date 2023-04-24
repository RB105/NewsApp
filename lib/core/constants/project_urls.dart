import 'package:flutter_dotenv/flutter_dotenv.dart';

class ProjectUrls {
  static String apiKey = dotenv.get("API_KEY");
  static String appleUrl="https://newsapi.org/v2/everything?q=apple&from=2023-04-22&to=2023-04-22&sortBy=popularity&apiKey=$apiKey";
  static String teslaUrl = "https://newsapi.org/v2/everything?q=tesla&from=2023-03-23&sortBy=publishedAt&apiKey=$apiKey";
  static String businessUrl = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$apiKey";
  static String techUrl = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$apiKey";
  static String magazineUrl = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=$apiKey";
}