import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'logger.dart';
import 'countries_and_flags.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        TalkerRiverpodObserver(
          talker: talker,
        )
      ],
      child: const CountriesAndFlags(),
    ),
  );
}
