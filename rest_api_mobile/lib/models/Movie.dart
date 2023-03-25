// ignore_for_file: file_names

class Movie {
  String? title;
  String? year;
  String? rated;
  String? released;
  String? runtime;
  String? genre;
  String? director;
  String? writer;
  String? actors;
  String? plot;
  String? language;
  String? country;
  String? awards;
  String? poster;
  String? metascore;
  String? imdbRating;
  String? imdbVotes;
  String? imdbID;
  String? type;
  String? response;
  List<String>? images;

  Movie(
      {title,
      year,
      rated,
      released,
      runtime,
      genre,
      director,
      writer,
      actors,
      plot,
      language,
      country,
      awards,
      poster,
      metascore,
      imdbRating,
      imdbVotes,
      imdbID,
      type,
      response,
      images});

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    year = json['Year'];
    rated = json['Rated'];
    released = json['Released'];
    runtime = json['Runtime'];
    genre = json['Genre'];
    director = json['Director'];
    writer = json['Writer'];
    actors = json['Actors'];
    plot = json['Plot'];
    language = json['Language'];
    country = json['Country'];
    awards = json['Awards'];
    poster = json['Poster'];
    metascore = json['Metascore'];
    imdbRating = json['imdbRating'];
    imdbVotes = json['imdbVotes'];
    imdbID = json['imdbID'];
    type = json['Type'];
    response = json['Response'];
    images = json['Images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Title'] = title;
    data['Year'] = year;
    data['Rated'] = rated;
    data['Released'] = released;
    data['Runtime'] = runtime;
    data['Genre'] = genre;
    data['Director'] = director;
    data['Writer'] = writer;
    data['Actors'] = actors;
    data['Plot'] = plot;
    data['Language'] = language;
    data['Country'] = country;
    data['Awards'] = awards;
    data['Poster'] = poster;
    data['Metascore'] = metascore;
    data['imdbRating'] = imdbRating;
    data['imdbVotes'] = imdbVotes;
    data['imdbID'] = imdbID;
    data['Type'] = type;
    data['Response'] = response;
    data['Images'] = images;
    return data;
  }
}