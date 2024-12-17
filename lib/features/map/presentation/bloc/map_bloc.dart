import 'package:bloc/bloc.dart';
import 'package:flutter_3d_map/core/usecases/usecase.dart';
import 'package:flutter_3d_map/features/map/presentation/bloc/map_event.dart';
import 'package:flutter_3d_map/features/map/presentation/bloc/map_state.dart';

import '../../domain/usecases/get_polylines.dart';
import '../../domain/usecases/get_user_location.dart';
import '../../domain/usecases/search_location.dart';


class MapBloc extends Bloc<MapEvent, MapState> {
  final GetPolylines getPolylines;
  final GetUserLocation getUserLocation;
  final SearchLocation searchLocation;

  MapBloc({
    required this.getPolylines,
    required this.getUserLocation,
    required this.searchLocation,
  }) : super(MapInitial()) {
    on<LoadPolylinesEvent>((event, emit) async {
      final result = await getPolylines(NoParams());
      result.fold(
        (failure) => emit(MapError('Failed to load polylines')),
        (polylines) => emit(PolylinesLoaded(polylines)),
      );
    });

    on<TrackUserLocationEvent>((event, emit) async {
      final result = await getUserLocation(NoParams());
      result.fold(
        (failure) => emit(MapError('Failed to track location')),
        (location) => emit(UserLocationTracked(location)),
      );
    });

    on<SearchLocationEvent>((event, emit) async {
      final result = await searchLocation(event.query);
      result.fold(
        (failure) => emit(MapError('Failed to search location')),
        (location) => emit(LocationSearched(location)),
      );
    });
  }
}
