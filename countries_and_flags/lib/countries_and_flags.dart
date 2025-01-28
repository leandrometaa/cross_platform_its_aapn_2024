import 'package:flutter/material.dart';
import 'router.dart';

class CountriesAndFlags extends StatelessWidget {
  const CountriesAndFlags({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
