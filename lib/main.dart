import 'package:flutter/material.dart';
import 'package:flutter_3d_map/data/datasource/data_source.dart';
import 'package:flutter_3d_map/data/repositories/repo_imp.dart';
import 'package:flutter_3d_map/presentation/bloc/trail_bloc.dart';
import 'package:flutter_3d_map/presentation/bloc/trail_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/blocs/trail_bloc.dart';
import 'presentation/pages/trail_page.dart';
import 'data/repositories/trail_repository_impl.dart';
import 'data/datasources/trail_data_source.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Setting up dependencies
    final trailDataSource = TrailDataSource();
    final trailRepository = TrailRepositoryImpl(trailDataSource);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TrailBloc(trailRepository)..add(FetchTrails()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '3D Interactive Map',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TrailPage(),
      ),
    );
  }
}
