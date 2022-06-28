import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

fetchApi() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
  // log(response.body, name: 'api Response');
  log(response.body.toString(), name: 'responseFromApi');
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
    // return ApiResponse.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
