// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/research.dart'; // Adjust the import path accordingly

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<List<ResearchRecord>> fetchResearchRecords() async {
    final response = await http.get(Uri.parse('$baseUrl/researches'));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((dynamic item) => ResearchRecord.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load research records');
    }
  }
}
