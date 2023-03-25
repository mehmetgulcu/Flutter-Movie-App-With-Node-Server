import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api_mobile/models/Movie.dart';

Future<List<Movie>> fetchMovie(http.Client client) async {
  final response = await client.get(Uri.parse('http://192.168.1.5:3000/api/movies'));
  // Use the compute function to run parsePhotos in a separate isolate
  return compute(parseData, response.body);
}

// A function that will convert a response body into a List<Movie>
List<Movie> parseData(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  List<Movie> list =
      parsed.map<Movie>((json) => Movie.fromJson(json)).toList();
  return list;
}