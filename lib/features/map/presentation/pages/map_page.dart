import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/map_bloc.dart';
import '../bloc/map_event.dart';
import '../bloc/map_state.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mapbox')),
      body: BlocBuilder<MapBloc, MapState>(
        builder: (context, state) {
          if (state is MapInitial) {
            return Center(child: Text('Welcome to Mapbox!'));
          } else if (state is PolylinesLoaded) {
            return Text('Polylines: ${state.polylines.length}');
          } else if (state is UserLocationTracked) {
            return Text('User Location: ${state.location.latitude}, ${state.location.longitude}');
          } else if (state is MapError) {
            return Text('Error: ${state.message}');
          }
          return const CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<MapBloc>().add(LoadPolylinesEvent()),
        child: const Icon(Icons.map),
      ),
    );
  }
}
