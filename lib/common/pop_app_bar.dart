import 'package:flutter/material.dart';

AppBar commonPopAppBar({required String title, required BuildContext context}) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.blue.shade400,
    elevation: 0,
    leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back)),
  );
}
