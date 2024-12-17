import 'package:dartz/dartz.dart';
import 'package:flutter_3d_map/core/error/failures.dart';
import 'package:flutter_3d_map/core/usecases/usecase.dart';

import '../entities/location.dart';
import '../repositories/map_repository.dart';


class GetPolylines extends UseCase<Either<Failure, List<Location>>, NoParams> {
  final MapRepository repository;

  GetPolylines(this.repository);

  @override
  Future<Either<Failure, List<Location>>> call(NoParams params) {
    return repository.getPolylines();
  }
}
