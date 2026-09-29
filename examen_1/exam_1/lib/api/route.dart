import 'package:http/http.dart' as http;

import 'dart:convert';

Future<dynamic> fetchUsers() async {
  final response = await http.get(Uri.parse(""));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  }
  throw Exception('Error');
}
