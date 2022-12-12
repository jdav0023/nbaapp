import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:nbaapp/common/pop_app_bar.dart';
import 'package:nbaapp/common/drawer.dart';
import 'package:nbaapp/models/game.dart';
import 'package:http/http.dart' as http;

class GamesPage extends StatelessWidget {
  GamesPage({super.key});

  final List<Game> games = [];

  // Get games method
  Future getGames() async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/games'));
    var jsonData = jsonDecode(response.body);

    for (var eachGame in jsonData['data']) {
      final game = Game(
          homeTeam: eachGame["home_team"]["abbreviation"],
          visitorTeam: eachGame["visitor_team"]["abbreviation"],
          homeTeamScore: eachGame["home_team_score"],
          visitorTeamScore: eachGame["visitor_team_score"],
          dateTime: DateTime.parse(eachGame["date"]));
      games.add(game);
    }
  }

  @override
  Widget build(BuildContext context) {
    getGames();
    return Scaffold(
      appBar: commonPopAppBar(title: "Games", context: context),
      drawer: commonDrawer(context: context),
      body: FutureBuilder(
        future: getGames(),
        builder: ((context, snapshot) {
          // Check if loaded
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: games.length,
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
                            "${games[index].homeTeam} vs ${games[index].visitorTeam}"),
                        subtitle: Text(
                            "${games[index].dateTime.day}-${games[index].dateTime.month}-${games[index].dateTime.year}"),
                        trailing: Text(
                          "${games[index].homeTeamScore} - ${games[index].visitorTeamScore}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
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
