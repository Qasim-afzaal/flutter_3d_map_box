import 'package:dartz/dartz.dart';
import 'package:flutter_3d_map/core/error/failures.dart';
import 'package:flutter_3d_map/features/map/data/data_source/map_remote_data_source.dart';

import '../../domain/entities/location.dart';
import '../../domain/repositories/map_repository.dart';


class MapRepositoryImpl implements MapRepository {
  final MapRemoteDataSource remoteDataSource;

  MapRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<Location>>> getPolylines() async {
    try {
      final result = await remoteDataSource.fetchPolylines();
      return Right(result);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Location>> getUserLocation() async {
    try {
      final result = await remoteDataSource.fetchUserLocation();
      return Right(result);
    } catch (_) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Location>> searchLocation(String query) async {
    try {
      final result = await remoteDataSource.searchLocation(query);
      return Right(result);
    } catch (_) {
      return Left(ServerFailure());
    }
  }
}
