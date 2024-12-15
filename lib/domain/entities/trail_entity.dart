import 'package:equatable/equatable.dart';

class Trail extends Equatable {
  final String name;
  final double latitude;
  final double longitude;

  Trail({required this.name, required this.latitude, required this.longitude});

  @override
  List<Object> get props => [name, latitude, longitude];
}
