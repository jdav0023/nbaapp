import 'package:flutter/material.dart';
import 'package:nbaapp/routes/routing_constants.dart';

AlertDialog commonAlertDialog(
    {required String details, required BuildContext context}) {
  return AlertDialog(
    title: const Text('Sign In Alert'),
    content: Text(details),
    actions: <Widget>[
      GestureDetector(
        child: const Text('OK'),
        onTap: () {
          Navigator.of(context).pop();
        },
      ),
      GestureDetector(
        child: const Text('Bypass Sign In'),
        onTap: () {
          Navigator.pushNamed(context, HomeViewRoute);
        },
      ),
    ],
  );
}
