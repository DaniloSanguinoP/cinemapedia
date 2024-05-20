import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastruture/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastruture/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movieDB) => Movie(
      adult: movieDB.adult,
      backdropPath: (movieDB.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500/${movieDB.backdropPath}'
          : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
      genreIds: movieDB.genreIds.map((e) => e.toString()).toList(),
      id: movieDB.id,
      originalLanguage: movieDB.originalLanguage,
      originalTitle: movieDB.originalTitle,
      overview: movieDB.overview,
      popularity: movieDB.popularity,
      posterPath: (movieDB.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500/${movieDB.posterPath}'
          : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
      releaseDate: movieDB.releaseDate!,
      title: movieDB.title,
      video: movieDB.video,
      voteAverage: movieDB.voteAverage,
      voteCount: movieDB.voteCount);

  static Movie movieDetailsToEntity(MovieDetails movieDetails) =>
      Movie(
          adult: movieDetails.adult,
          backdropPath:(movieDetails.backdropPath != '')
              ? 'https://image.tmdb.org/t/p/w500/${movieDetails.backdropPath}'
              : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
          genreIds: movieDetails.genres.map((e) => e.name).toList(),
          id: movieDetails.id,
          originalLanguage: movieDetails.originalLanguage,
          originalTitle: movieDetails.originalTitle,
          overview: movieDetails.overview,
          popularity: movieDetails.popularity,
          posterPath: (movieDetails.posterPath != '')
              ? 'https://image.tmdb.org/t/p/w500/${movieDetails.posterPath}'
              : 'https://static.displate.com/857x1200/displate/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
          releaseDate: movieDetails.releaseDate,
          title: movieDetails.title,
          video: movieDetails.video,
          voteAverage: movieDetails.voteAverage,
          voteCount: movieDetails.voteCount
      );
}
