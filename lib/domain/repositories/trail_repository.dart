import 'package:dartz/dartz.dart';
import '../entities/trail.dart';

abstract class TrailRepository {
  Future<Either<Exception, List<Trail>>> getTrails();
}
