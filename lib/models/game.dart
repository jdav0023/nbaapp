class Game {
  final String homeTeam;
  final String visitorTeam;
  final int homeTeamScore;
  final int visitorTeamScore;
  final DateTime dateTime;

  Game(
      {required this.homeTeam,
      required this.visitorTeam,
      required this.homeTeamScore,
      required this.visitorTeamScore,
      required this.dateTime});
}
