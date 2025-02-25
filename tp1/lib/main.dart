import 'package:flutter/material.dart';
import 'package:flutter_application_tp1/class/about.dart';
import 'package:provider/provider.dart';
import 'class/homepage.dart';
import 'class/app_state_provider.dart';
import 'class/media_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppStateProvider(),
      child : MaterialApp(
        title: 'Media browser',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const MyHome(),
      )
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int currentIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {setState(() {
          currentIndex = index;
        });},
        selectedIndex: currentIndex,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.perm_media), label: 'media'),
          NavigationDestination(icon: Icon(Icons.question_mark), label: 'about'),
        ]
      ),
      body: <Widget>[AfficheHomePage(),PageMedia(), AfficheAbout() ][currentIndex],
    );
  }
}
