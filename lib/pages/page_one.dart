import 'package:flutter/material.dart';
import 'package:nbaapp/common/pop_app_bar.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonPopAppBar(title: "Page One", context: context),
      body: const Center(
        child: Text("Page 1"),
      ),
    );
  }
}
