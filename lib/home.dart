import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key, required String title});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<String> _chargerDonnees() async {
     final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users/1"));
    //final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users?user=3&id=1"));
  
    //final response = await http.get(Uri.parse("https://calculatrice-immobiliere.ca/en"));

    if (response.statusCode == 200) {
      return response.body;
      //return jsonDecode(response.body);
    } else {
      throw Exception("Erreur de chargement des donnees");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: FutureBuilder(
        future: _chargerDonnees(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //return const CircularProgressIndicator();
            return Text(snapshot.data.toString());
            // ignore: prefer_typing_uninitialized_variables
          } else if (snapshot.hasError) {
            return const Text("Erreur de chargement des donnees ");
          } else {
            return const CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
