import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = "http://localhost:8080/account";

  static Future<void> createAccount(String name, double balance) async {
    final response = await http.post(
      Uri.parse('$baseUrl/create'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'accountHolder': name,
        'balance': balance,
        'accountNumber': '1234567890',
      }),
    );

    if (response.statusCode == 200) {
      print('Account created successfully');
    } else {
      print('Failed to create account');
    }
  }
}
