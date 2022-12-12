import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:nbaapp/common/pop_app_bar.dart';
import 'package:nbaapp/common/drawer.dart';
import 'package:nbaapp/models/team.dart';
import 'package:http/http.dart' as http;

class TeamsPage extends StatelessWidget {
  TeamsPage({super.key});

  final List<Team> teams = [];

  // Get teams method
  Future getTeams() async {
    var response = await http.get(Uri.https('balldontlie.io', 'api/v1/teams'));
    var jsonData = jsonDecode(response.body);

    for (var eachTeam in jsonData['data']) {
      final team =
          Team(abbreviation: eachTeam['abbreviation'], city: eachTeam['city']);
      teams.add(team);
    }
  }

  @override
  Widget build(BuildContext context) {
    getTeams();
    return Scaffold(
      appBar: commonPopAppBar(title: "Teams", context: context),
      drawer: commonDrawer(context: context),
      body: FutureBuilder(
        future: getTeams(),
        builder: ((context, snapshot) {
          // Check if loaded
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
                itemCount: teams.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(teams[index].abbreviation),
                        subtitle: Text(teams[index].city),
                        trailing: FavoriteButton(
                          valueChanged: (isFavorite) {
                            print('Is Favorite $isFavorite');
                          },
                          iconSize: 50,
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
