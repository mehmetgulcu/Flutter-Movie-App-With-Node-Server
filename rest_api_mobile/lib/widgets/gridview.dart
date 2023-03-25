import 'package:flutter/material.dart';
import 'package:rest_api_mobile/models/Movie.dart';

class MovieGridView extends StatelessWidget {
  final List<Movie> movies;

  const MovieGridView({required Key? key, required this.movies})
      : super(key: key);

  Card getStructuredGridCell(Movie movies) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(movies.images![1].toString()),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
        child: ListTile(
          title: Text(
            movies.title.toString(),
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            movies.imdbRating.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: true,
      crossAxisCount: 2,
      childAspectRatio: 0.80,
      children: List.generate(movies.length, (index) {
        return getStructuredGridCell(movies[index]);
      }),
    );
  }
}
