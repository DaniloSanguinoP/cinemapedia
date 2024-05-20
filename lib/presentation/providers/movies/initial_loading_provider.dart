import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'movies_provider.dart';

final initialLoadingProvider = Provider<bool>((ref) {

  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider).isEmpty;
  final popularMovies = ref.watch(popularMoviesProvider).isEmpty;
  final upcomingMovies = ref.watch(upcomingMoviesProvider).isEmpty;
  final toRateMovies = ref.watch(toRateMoviesProvider).isEmpty;

  if(nowPlayingMovies || popularMovies || upcomingMovies || toRateMovies) return true;

  return false;
});