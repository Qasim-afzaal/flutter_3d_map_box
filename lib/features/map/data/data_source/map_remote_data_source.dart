import '../../domain/entities/location.dart';

abstract class MapRemoteDataSource {
  Future<List<Location>> fetchPolylines();
  Future<Location> fetchUserLocation();
  Future<Location> searchLocation(String query);
}

class MapRemoteDataSourceImpl implements MapRemoteDataSource {
  @override
  Future<List<Location>> fetchPolylines() async {
    // Simulated API response
    return [
      Location(latitude: 37.7749, longitude: -122.4194),
      Location(latitude: 37.7799, longitude: -122.4294),
    ];
  }

  @override
  Future<Location> fetchUserLocation() async {
    // Simulated user location
    return Location(latitude: 37.7749, longitude: -122.4194);
  }

  @override
  Future<Location> searchLocation(String query) async {
    // Simulated location search result
    return Location(latitude: 37.7749, longitude: -122.4194);
  }
}
