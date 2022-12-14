import 'package:netflix_clone/core/urls/api_key.dart';

const kBaseUrl = 'https://api.themoviedb.org/3';
const kImageBaseUrl = 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2';
const kHotAndNewImageBaseUrl = 'https://www.themoviedb.org/t/p/w533_and_h300_bestv2';
const kTopSearchImageBaseUrl = 'https://www.themoviedb.org/t/p/w250_and_h141_face';
const kHomePageImageBaseUrl = 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2';
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
  static const everyOnesWatchingApiPart1 =
      '$kBaseUrl/discover/movie?api_key=$apiKey&language=en-US&sort_by=popularity.desc&include_adult=false&';
  //include 'page = int' between 2 parts so to implement refresh functionality.
  static const everyOnesWatchingApiPart2 = '&primary_release_year=2022';
  static const comingSoonApiPart1 =
      '$kBaseUrl/discover/tv?api_key=$apiKey&language=en-US&sort_by=popularity.desc&first_air_date_year=2022&';
  //include 'page = int' between 2 parts so to implement refresh functionality.
  static const comingSoonApiPart2 =
      '&timezone=America%2FNew_York&include_null_first_air_dates=false';
  static const releasedInPastYearApi =
      '$kBaseUrl/discover/movie?api_key=$apiKey&language=en-US&sort_by=popularity.desc&include_adult=false&page=2&primary_release_year=2021';
  static const top10TvShowsApi =
      '$kBaseUrl/discover/tv?api_key=$apiKey&language=en-US&sort_by=popularity.desc&page=1&timezone=America%2FNew_York&include_null_first_air_dates=false&screened_theatrically=true';
  static const southIndianCinemaApi =
      '$kBaseUrl/discover/movie?api_key=$apiKey&with_original_language=ml&sort_by=vote_average.desc&include_adult=false&release_date.gte=2021&vote_count.gte=15';
  static const tenseDramasApi =
      '$kBaseUrl/discover/movie?api_key=$apiKey&language=en-US&sort_by=popularity.desc&include_adult=false&vote_count.gte=100&vote_average.gte=8&with_genres=Horror';
  static const trendingNowApi = '$kBaseUrl/trending/tv/week?api_key=$apiKey';
}
