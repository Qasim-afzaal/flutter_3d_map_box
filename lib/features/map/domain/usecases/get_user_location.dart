import 'package:dartz/dartz.dart';
import 'package:flutter_3d_map/core/error/failures.dart';
import 'package:flutter_3d_map/core/usecases/usecase.dart';

import '../entities/location.dart';
import '../repositories/map_repository.dart';


class GetUserLocation extends UseCase<Either<Failure, Location>, NoParams> {
  final MapRepository repository;

  GetUserLocation(this.repository);

  @override
  Future<Either<Failure, Location>> call(NoParams params) {
    return repository.getUserLocation();
  }
}
