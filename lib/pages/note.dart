import 'package:flutter/material.dart';

class ListeEvent extends StatefulWidget {
  const ListeEvent({super.key});

  @override
  State<ListeEvent> createState() => _ListeEventState();
}

class _ListeEventState extends State<ListeEvent> {
  final events = [
    {
      "speaker" : "Jhon Doe",
      "date" : "15h-17h",
      "subject" : "Code C++",
      "avatar" : "img1"
    },
    {
      "speaker" : "Wallas Wins",
      "date" : "18h-19h",
      "subject" : "Intelligence artificiel",
      "avatar" : "img2"
    },
    {
      "speaker" : "Dart Matter",
      "date" : "20h-22h",
      "subject" : "Flutter Mobile",
      "avatar" : "img3"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Evenements"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Image.asset(
                "assets/images/img1.png",
              ),
              title: const Text(
                "Jhon Doe",
                style: TextStyle(fontSize: 25.2, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "Moderateur",
                style: TextStyle(fontSize: 17.0),
              ),
              trailing: const Icon(Icons.info),
            ),
          ),
        ],
      )),
    );
  }
}
