class TrailModel {
  final String name;
  final double latitude;
  final double longitude;

  TrailModel({required this.name, required this.latitude, required this.longitude});

  factory TrailModel.fromJson(Map<String, dynamic> json) {
    return TrailModel(
      name: json['name'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}
