import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListeArticle extends StatefulWidget {
  const ListeArticle({super.key});

  @override
  State<ListeArticle> createState() => _ListeArticleState();
}

class _ListeArticleState extends State<ListeArticle> {
  @override
  Widget build(BuildContext context) {
    /****************************** Dialog *********************/
    Future<void> showArticleDetail() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Detail'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Aritcle Armoir'),
                  Image.asset(
                    "assets/images/img1.png",
                    height: 120,
                    width: 120,
                  ),
                  Text('Venant de doubai'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    /****************************** Dialog Fin *********************/

    return Center(
      child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Articles").snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            }
            if (!snapshot.hasData) {
              return Text("Pas de donnée");
            }

            List<dynamic> events = [];
            snapshot.data?.docs.forEach((element) {
              events.add(element);
            });

            return ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                final event = events[index];
                final avatar = event['avatar'];
                final description = event['description'];
                final Timestamp timestamp = event['date'];
                final String date =
                    DateFormat.yMd().add_jm().format(timestamp.toDate());
                final nom = event['nom'];
                final provenance = event['provenance'];
                return Card(
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/$avatar.png",
                    ),
                    title: Text(
                      '$nom a $date',
                      style: const TextStyle(
                          fontSize: 20.2, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '$description venant de $provenance',
                      style: const TextStyle(fontSize: 17.0),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.info),
                      onPressed: () {
                        showArticleDetail();
                      },
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
