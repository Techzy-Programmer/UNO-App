import 'package:flutter/material.dart';

class Lobby extends StatefulWidget {
  const Lobby({super.key});

  @override
  State<Lobby> createState() => _LobbyState();
}

class _LobbyState extends State<Lobby> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Hero(tag: "uno_logo", child: Image.asset("assets/img/uno_logo.png", width: 40)),
          backgroundColor: const Color.fromARGB(141, 0, 150, 135),
          shadowColor: Colors.black,
          elevation: 4,
          
          title: const Text("Game Lobby",
            style: TextStyle(
              color: Color.fromARGB(255, 34, 22, 0),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
          ),
        ),
        body: const Column(
          children: [],
        ),
      ),
    );
  }
}
