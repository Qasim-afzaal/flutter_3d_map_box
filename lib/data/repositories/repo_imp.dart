import 'package:dartz/dartz.dart';
import 'package:flutter_3d_map/data/datasource/data_source.dart';
import 'package:flutter_3d_map/domain/entities/trail_entity.dart';
import 'package:flutter_3d_map/domain/repositories/trail_repository.dart';


class TrailRepositoryImpl implements TrailRepository {
  final TrailDataSource dataSource;

  TrailRepositoryImpl(this.dataSource);

  @override
  Future<Either<Exception, List<Trail>>> getTrails() async {
    try {
      final models = await dataSource.fetchTrails();
      final trails = models.map((e) => Trail(name: e.name, latitude: e.latitude, longitude: e.longitude)).toList();
      return Right(trails);
    } catch (e) {
      return Left(Exception("Error fetching trails"));
    }
  }
}
