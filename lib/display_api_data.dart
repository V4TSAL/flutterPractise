import 'package:first_task_s/Widgets/apbar.dart';
import 'package:first_task_s/Widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'model/album_class.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model/album_class.dart';

Future<List<Album>?>   getAlbum() async {
  final res = await http.get(Uri.parse(
      'https://jsonplaceholder.typicode.com/albums'));
  if (res.statusCode == 200) {
    final List result = json.decode(res.body);
    // print(Album.fromJson(jsonDecode(res.body)[0]));
    return Album.fromJsonList(json.decode(res.body));
    // return Album.fromJson(jsonDecode(res.body)[0]);
  } else {
    throw Exception('Failed to load album');
  }
}
class DisplayApiData extends StatefulWidget {
  const DisplayApiData({super.key});

  @override
  State<DisplayApiData> createState() => _DisplayApiDataState();
}

class _DisplayApiDataState extends State<DisplayApiData> {
  // ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      bottomNavigationBar: CustomBottomNavigationBar(0, (p02) => null),
      body: FutureBuilder<List<Album>?>(
      future: getAlbum(),
      builder: (context, AsyncSnapshot<List<Album>?> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == null) {
            return const Center(child: Text('Something went wrong'));
          }

          return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index].title),
                );
              });
        }
        return Align(alignment:Alignment.center,child: const CircularProgressIndicator());
      }
    ),);
  }
}
