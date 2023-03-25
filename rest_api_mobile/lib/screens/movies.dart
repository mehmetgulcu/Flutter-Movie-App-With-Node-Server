import 'package:flutter/material.dart';
import 'package:rest_api_mobile/models/Movie.dart';
import 'package:rest_api_mobile/network/network_request.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api_mobile/widgets/gridview.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie API App',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: FutureBuilder<List<Movie>>(
        future: fetchMovie(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) debugPrint(snapshot.error.toString());

          return snapshot.hasData
              ? MovieGridView(
                  movies: snapshot.data as List<Movie>, key: null,
                )
              : const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
