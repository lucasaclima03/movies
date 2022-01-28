import 'package:dio/dio.dart';
import 'package:movies/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'Content-Type': 'application/json;charset=utf-8',
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhNzhmMWUxODk1NGM2MzllZjBhMGViODAyMTg3NmI2ZiIsInN1YiI6IjYxNDM0NDRiNTZiOWY3MDA0NTAwZWY3OSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.yTzB3-3NJ_jon7jHZ5fqVcHrgCT5rUrfuMyrezqSz9Q',
          
        }        
      ),
    );
  }
}
