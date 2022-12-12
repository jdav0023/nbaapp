import 'package:flutter/material.dart';
import 'package:nbaapp/pages/page_one.dart';

Drawer commonDrawer({required BuildContext context}) {
  return Drawer(
    child: Container(
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                "NBA App",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Page 1"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => const PageOne())));
            },
          )
        ],
      ),
    ),
  );
}
