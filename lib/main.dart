import 'package:flutter/material.dart';
import 'package:flutter_3d_map/features/map/data/data_source/map_remote_data_source.dart';
import 'package:flutter_3d_map/features/map/presentation/pages/map_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/map/presentation/bloc/map_bloc.dart';
import 'features/map/domain/usecases/get_polylines.dart';
import 'features/map/domain/usecases/get_user_location.dart';
import 'features/map/domain/usecases/search_location.dart';

import 'features/map/data/repositories/map_repository_impl.dart';

void main() {
  final remoteDataSource = MapRemoteDataSourceImpl();
  final repository = MapRepositoryImpl(remoteDataSource);

  runApp(MyApp(
    getPolylines: GetPolylines(repository),
    getUserLocation: GetUserLocation(repository),
    searchLocation: SearchLocation(repository),
  ));
}

class MyApp extends StatelessWidget {
  final GetPolylines getPolylines;
  final GetUserLocation getUserLocation;
  final SearchLocation searchLocation;

  MyApp({
    required this.getPolylines,
    required this.getUserLocation,
    required this.searchLocation,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => MapBloc(
          getPolylines: getPolylines,
          getUserLocation: getUserLocation,
          searchLocation: searchLocation,
        ),
        child: MapPage(),
      ),
    );
  }
}
