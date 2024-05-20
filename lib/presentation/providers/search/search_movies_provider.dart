import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia/presentation/providers/movies/movies_repository_provider.dart';

final searchQueryProvider = StateProvider<String>((ref) => '');

final searchedMoviesProvider = StateNotifierProvider<SearchedMoviesNotifier, List<Movie>>((ref) {
  final movieRepository = ref.read(movieRepositoryProvider);

  return SearchedMoviesNotifier(
      searchMoviesCallback: movieRepository.searchMovies,
      ref: ref
  );
});

typedef SearchMoviesCallback = Future<List<Movie>> Function(String query);

class SearchedMoviesNotifier extends StateNotifier<List<Movie>> {

  final SearchMoviesCallback searchMoviesCallback;
  final Ref ref;

  SearchedMoviesNotifier({
    required this.searchMoviesCallback,
    required this.ref
  }) : super([]);

  Future<List<Movie>> searchMoviesByQuery(String query) async {

    final List<Movie> movie = await searchMoviesCallback(query);
    ref.read(searchQueryProvider.notifier).update((state) => query);

    state = movie;
    return movie;
  }

}