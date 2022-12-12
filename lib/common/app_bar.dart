import 'package:flutter/material.dart';

AppBar commonAppBar({required String title}) {
  return AppBar(
    title: Text(title),
    backgroundColor: Colors.blue.shade400,
    elevation: 0,
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
  );
}
