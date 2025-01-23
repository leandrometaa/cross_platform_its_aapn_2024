import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/logger.dart';
import 'package:rick_and_morty/dogs.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        TalkerRiverpodObserver(
          talker: talker,
        )
      ],
      child: const Dogs(),
    ),
  );
}
