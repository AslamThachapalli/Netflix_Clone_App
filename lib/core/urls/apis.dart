import 'package:netflix_clone/core/urls/api_key.dart';

const kBaseUrl = 'https://api.themoviedb.org/3';
const kImageBaseUrl = 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2';

class Apis {
  static const getDownloadImageApi = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const searchIdleScreenDataApi = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const searchActiveApiPart1 =
      '$kBaseUrl/search/movie?api_key=$apiKey&language=en-US&query=';
  static const searchActiveApiPart2 = '&page=1&include_adult=false';
}
