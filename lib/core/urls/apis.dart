import 'package:netflix_clone/core/urls/api_key.dart';

const kBaseUrl = 'https://api.themoviedb.org/3';
const kImageBaseUrl = 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2';
const kTopSearchImageBaseUrl = 'https://www.themoviedb.org/t/p/w250_and_h141_face';
const kFastLaughBaseUrl = 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/';
const List<Map<String, String>> kFastLaughUrls = [
  {'videoUrl': "BigBuckBunny.mp4", 'imageUrl': "images/BigBuckBunny.jpg"},
  {'videoUrl': "ForBiggerEscapes.mp4", 'imageUrl': "images/ForBiggerEscapes.jpg"},
  {'videoUrl': "ForBiggerFun.mp4", 'imageUrl': "images/ForBiggerFun.jpg"},
  {'videoUrl': "ForBiggerJoyrides.mp4", 'imageUrl': "images/ForBiggerJoyrides.jpg"},
  {'videoUrl': "ForBiggerMeltdowns.mp4", 'imageUrl': "images/ForBiggerMeltdowns.jpg"},
  {'videoUrl': "Sintel.mp4", 'imageUrl': "images/Sintel.jpg"},
  {'videoUrl': "TearsOfSteel.mp4", 'imageUrl': "images/TearsOfSteel.jpg"},
  {'videoUrl': "WhatCarCanYouGetForAGrand.mp4", 'imageUrl': "images/WhatCarCanYouGetForAGrand.jpg"},
];

class Apis {
  static const getDownloadImageApi = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const searchIdleScreenDataApi = "$kBaseUrl/trending/all/day?api_key=$apiKey";
  static const searchActiveApiPart1 =
      '$kBaseUrl/search/movie?api_key=$apiKey&language=en-US&query=';
  static const searchActiveApiPart2 = '&page=1&include_adult=false';
}
