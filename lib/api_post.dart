import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  http.Response response = await createUser("Vatsal", "Sharma");
  print(response.body);
}

Future<http.Response> createUser(String name, String job) {
  return http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': name,
      'body': job,
      'userId': "1",
    }),
  );
}

