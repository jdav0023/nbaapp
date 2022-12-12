import 'package:flutter/material.dart';
import 'package:nbaapp/common/app_bar.dart';
import 'package:nbaapp/common/drawer.dart';
import 'package:nbaapp/routes/routing_constants.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<CustomButton> buttons = [
    const CustomButton(
      title: "Teams",
      icon: Icons.people,
      pageRoute: TeamsViewRoute,
    ),
    const CustomButton(
      title: "Players",
      icon: Icons.person,
      pageRoute: PlayersViewRoute,
    ),
    const CustomButton(
      title: "Games",
      icon: Icons.sports_basketball,
      pageRoute: GamesViewRoute,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(title: "Home"),
      drawer: commonDrawer(context: context),
      body: GridView.builder(
        itemCount: buttons.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: ((context, index) {
          return buttons[index];
        }),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final String pageRoute;

  const CustomButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.pageRoute});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, pageRoute);
        },
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 90,
                color: Colors.grey.shade500,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey.shade800),
              )
            ],
          ),
        ),
      ),
    );
  }
}
