import 'package:flutter/material.dart';
import 'package:movies/models/movies_model.dart';
import 'package:movies/utils/apis.utils.dart';

class DetailsPage extends StatelessWidget {
  final Movie movie;
  const DetailsPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .55,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: movie.id,
                  child: Image.network(
                    API.REQUEST_IMG(movie.posterPath),
                    loadingBuilder: (_, child, progress) {
                      if (progress == null) return child;
                      return CircularProgressIndicator.adaptive();
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                movie.overview,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.title),
                  Text(movie.originalTitle),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.new_releases),
                  Text(movie.releaseDate),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
