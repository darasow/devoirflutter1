import 'package:flutter/material.dart';

class ListeArticle extends StatefulWidget {
  const ListeArticle({super.key});

  @override
  State<ListeArticle> createState() => _ListeArticleState();
}

class _ListeArticleState extends State<ListeArticle> {
  final events = [
    {
      "speaker": "Jhon Doe",
      "date": "15h-17h",
      "subject": "Code C++",
      "avatar": "img1"
    },
    {
      "speaker": "Wallas Wins",
      "date": "18h-19h",
      "subject": "Intelligence artificiel",
      "avatar": "img2"
    },
    {
      "speaker": "Dart Matter",
      "date": "20h-22h",
      "subject": "Flutter Mobile",
      "avatar": "img5"
    },
    {
      "speaker": "Grafikart",
      "date": "00h-02h",
      "subject": "Js BOM",
      "avatar": "img6"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        final avatar = event['avatar'];
        final subject = event['subject'];
        final date = event['date'];
        final speaker = event['speaker'];
        return Card(
          child: ListTile(
            leading: Image.asset(
              "assets/images/$avatar.png",
            ),
            title: Text(
              '$speaker a $date',
              style:
                  const TextStyle(fontSize: 25.2, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '$subject',
              style: const TextStyle(fontSize: 17.0),
            ),
            trailing: const Icon(Icons.info),
          ),
        );
      },
    ));
  }
}
