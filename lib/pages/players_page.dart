import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:nbaapp/common/pop_app_bar.dart';
import 'package:nbaapp/common/drawer.dart';
import 'package:nbaapp/models/player.dart';
import 'package:http/http.dart' as http;

class PlayersPage extends StatelessWidget {
  PlayersPage({super.key});

  final List<Player> players = [];

  // Get players method
  Future getPlayers() async {
    var response =
        await http.get(Uri.https('balldontlie.io', 'api/v1/players'));
    var jsonData = jsonDecode(response.body);

    for (var eachPlayer in jsonData['data']) {
      final player = Player(
          firstName: eachPlayer['first_name'],
          lastName: eachPlayer['last_name'],
          teamName: eachPlayer['team']['full_name']);
      players.add(player);
    }
  }

  @override
  Widget build(BuildContext context) {
    getPlayers();
    return Scaffold(
      appBar: commonPopAppBar(title: "Players", context: context),
      drawer: commonDrawer(context: context),
      body: FutureBuilder(
        future: getPlayers(),
        builder: ((context, snapshot) {
          // Check if loaded
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: players.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                            "${players[index].firstName} ${players[index].lastName}"),
                        subtitle: Text(players[index].teamName),
                      ),
                    ),
                  );
                });
          }

          // If it's still loading, show a loading icon
          else {
            return const Center(child: CircularProgressIndicator());
          }
        }),
      ),
    );
  }
}
