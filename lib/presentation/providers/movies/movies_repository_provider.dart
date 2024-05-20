import 'package:cinemapedia/infrastruture/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastruture/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Reposotorio es inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});