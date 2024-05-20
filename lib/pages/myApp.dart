// ignore: file_names
import 'package:apptuto/pages/ajout.dart';
import 'package:apptuto/pages/home.dart';
import 'package:apptuto/pages/article.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentePageIndex = 0;

  setcurrentePageIndex(int index) {
    setState(() {
      _currentePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: [
            const Text("Home"),
            const Text("Events"),
            const Text("Add"),
          ][_currentePageIndex],
        ),
        body: [
          const HomePage(),
          const ListeArticle(),
          const AddEvent(),
        ][_currentePageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentePageIndex,
          onTap: (index) => setcurrentePageIndex(index),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 40.0,
          elevation: 90.0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Acceuil"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Events"),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Ajout"),
          ],
        ),
      ),
    );
  }
}
