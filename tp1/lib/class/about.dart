import 'package:flutter/material.dart';


class AfficheAbout extends StatefulWidget {
  const AfficheAbout({super.key});

  @override
  State<AfficheAbout> createState() => _AfficheAboutState();
}

class _AfficheAboutState extends State<AfficheAbout> {
  int _cookieCount = 0;

  void _giveCookie() {
    setState(() {
      _cookieCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            '🍪 Bouton à cookies:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '$_cookieCount',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.brown),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: _giveCookie,
            tooltip: '+ Cookie',
            backgroundColor: Colors.brown,
            child: const Icon(Icons.cookie, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
