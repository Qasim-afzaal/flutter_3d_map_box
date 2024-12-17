import 'package:dartz/dartz.dart';
import 'package:flutter_3d_map/core/error/failures.dart';

import '../entities/location.dart';

abstract class MapRepository {
  Future<Either<Failure, List<Location>>> getPolylines();
  Future<Either<Failure, Location>> getUserLocation();
  Future<Either<Failure, Location>> searchLocation(String query);
}
