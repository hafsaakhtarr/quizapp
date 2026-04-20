import 'dart:convert';
import 'package:http/http.dart' as http;
import 'question.dart';

class ApiService {
  static const String baseUrl = 'https://opentdb.com/api.php';

  static Future<List<Question>> fetchQuestions() async {
    try {
      final String url =
          '$baseUrl?amount=10&category=9&difficulty=easy&type=multiple';

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final List<dynamic> results = data['results'] ?? [];

        return results.map((item) => Question.fromJson(item)).toList();
      } else {
        throw Exception('Failed to fetch questions: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching questions: $e');
    }
  }
}