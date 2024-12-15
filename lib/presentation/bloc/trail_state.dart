part of 'trail_bloc.dart';

abstract class TrailState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TrailInitial extends TrailState {}

class TrailLoading extends TrailState {}

class TrailLoaded extends TrailState {
  final List<Trail> trails;

  TrailLoaded(this.trails);

  @override
  List<Object?> get props => [trails];
}

class TrailError extends TrailState {
  final String message;

  TrailError(this.message);

  @override
  List<Object?> get props => [message];
}
