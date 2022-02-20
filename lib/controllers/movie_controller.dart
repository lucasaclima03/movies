import 'package:flutter/cupertino.dart';
import 'package:movies/models/movies_model.dart';
import 'package:movies/repositories/movies_repository.dart';

class MovieController {
  final MoviesRepository _moviesRepository;

  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<Movies?> movies = ValueNotifier<Movies?>(null);

  Movies? _cachedMovies;

  onChanged(String value) {
    List<Movie> list = _cachedMovies!.listMovies
        .where(
          (e) => e.toString().toLowerCase().contains(
                (value.toLowerCase()),
              ),
        )
        .toList();
  }

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
    _cachedMovies = movies.value;
  }
}
