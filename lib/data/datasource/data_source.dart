
import 'package:flutter_3d_map/data/model/trail_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class TrailDataSource {
  Future<List<TrailModel>> fetchTrails() async {
    final response = await http.get(Uri.parse('YOUR_API_ENDPOINT'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((e) => TrailModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load trails");
    }
  }
}
