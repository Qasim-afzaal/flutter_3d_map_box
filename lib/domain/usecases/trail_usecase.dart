import 'package:dartz/dartz.dart';
import 'package:flutter_3d_map/domain/entities/trail_entity.dart';

import '../repositories/trail_repository.dart';

class GetTrails {
  final TrailRepository repository;

  GetTrails(this.repository);

  Future<Either<Exception, List<Trail>>> call() {
    return repository.getTrails();
  }
}
