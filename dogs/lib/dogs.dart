import 'package:flutter/material.dart';
import 'package:rick_and_morty/router.dart';

class Dogs extends StatelessWidget {
  const Dogs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
