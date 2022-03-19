import 'package:flutter/material.dart';
import 'package:game_collection_flutter/generated/l10n.dart';

class HomePage extends StatelessWidget {
  HomePage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).game_collection),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            S.of(context).welcome_to_game_collection,
            style: const TextStyle(fontSize: 30),
          )),
          Center(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              padding: const EdgeInsets.all(20),
              children: [
                buildGameCard(context, "sudoku"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildGameCard(BuildContext context, String name) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/$name');
        },
        child: ListView(
          children: [
            Center(
              child: Text(
                name,
                style: const TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
