import 'package:flutter/material.dart';
import 'package:nbaapp/routes/router.dart' as router;
import 'package:nbaapp/routes/routing_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'NBA App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
      initialRoute: HomeViewRoute,
    );
  }
}
