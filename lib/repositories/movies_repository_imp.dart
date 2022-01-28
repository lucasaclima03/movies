import 'package:movies/models/movies_model.dart';
import 'package:movies/repositories/movies_repository.dart';
import 'package:movies/service/dio_service.dart';
import 'package:movies/utils/apis.utils.dart';

class MoviesRepositoryImp implements MoviesRepository {
  final DioService _dioService;

  MoviesRepositoryImp(this._dioService);

  @override
  Future<Movies> getMovies() async {
    var result = await _dioService.getDio().get(API.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}
