import 'package:dartz/dartz.dart';
import 'package:flutter_3d_map/core/error/failures.dart';
import 'package:flutter_3d_map/core/usecases/usecase.dart';

import '../entities/location.dart';
import '../repositories/map_repository.dart';


class SearchLocation extends UseCase<Either<Failure, Location>, String> {
  final MapRepository repository;

  SearchLocation(this.repository);

  @override
  Future<Either<Failure, Location>> call(String query) {
    return repository.searchLocation(query);
  }
}
