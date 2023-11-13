import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/legend/service.dart';

class NominalService {
  static String baseURL = "http://localhost:3000/topup";

  Future<List<Nominal>> fetchNominal() async {
    try {
      final response = await http.get(Uri.parse(baseURL));
      final body = response.body;
      final result = jsonDecode(body);
      List<Nominal> nominal = (result['data'] as List)
          .map((nominal) => Nominal.fromMap(nominal))
          .toList();
      return nominal;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
