import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  String baseUrl = 'jsonplaceholder.typicode.com';

  Future<dynamic> get(String path, {Map<String, String>? query}) async {
    final uri = Uri.https(baseUrl, path, query);
    final response = await http.get(uri, headers: _headers());
    return jsonDecode(response.body);
  }

  Future<dynamic> post(String path,
      {Map<String, String>? query, Object? body}) async {
    final uri = Uri.https(baseUrl, path, query);
    final response =
        await http.post(uri, body: jsonEncode(body), headers: _headers());
    return jsonDecode(response.body);
  }

  Future<dynamic> put(String path,
      {Map<String, String>? query, Object? body}) async {
    final uri = Uri.https(baseUrl, path, query);
    final response =
        await http.put(uri, body: jsonEncode(body), headers: _headers());
    return jsonDecode(response.body);
  }

  Future<dynamic> patch(String path,
      {Map<String, String>? query, Object? body}) async {
    final uri = Uri.https(baseUrl, path, query);
    final response =
        await http.patch(uri, body: jsonEncode(body), headers: _headers());
    return jsonDecode(response.body);
  }

  Future<dynamic> delete(String path,
      {Map<String, String>? query, Object? body}) async {
    final uri = Uri.https(baseUrl, path, query);
    final response =
        await http.delete(uri, body: jsonEncode(body), headers: _headers());
    return jsonDecode(response.body);
  }

  Map<String, String> _headers() {
    return {
      'Content-Type': 'application/json',
    };
  }
}
