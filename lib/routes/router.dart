import 'package:flutter/material.dart';
import 'package:nbaapp/pages/home_page.dart';
import 'package:nbaapp/pages/teams_page.dart';
import 'package:nbaapp/pages/players_page.dart';
import 'package:nbaapp/pages/games_page.dart';
import 'package:nbaapp/routes/routing_constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case TeamsViewRoute:
      return MaterialPageRoute(builder: (context) => TeamsPage());
    case PlayersViewRoute:
      return MaterialPageRoute(builder: (context) => PlayersPage());
    case GamesViewRoute:
      return MaterialPageRoute(builder: (context) => GamesPage());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
