import 'package:equatable/equatable.dart';
import '../../domain/entities/location.dart';

abstract class MapState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MapInitial extends MapState {}

class PolylinesLoaded extends MapState {
  final List<Location> polylines;

  PolylinesLoaded(this.polylines);

  @override
  List<Object?> get props => [polylines];
}

class UserLocationTracked extends MapState {
  final Location location;

  UserLocationTracked(this.location);

  @override
  List<Object?> get props => [location];
}

class LocationSearched extends MapState {
  final Location location;

  LocationSearched(this.location);

  @override
  List<Object?> get props => [location];
}

class MapError extends MapState {
  final String message;

  MapError(this.message);

  @override
  List<Object?> get props => [message];
}
