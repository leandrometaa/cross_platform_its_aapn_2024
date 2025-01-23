import 'package:go_router/go_router.dart';
import 'package:dogs/logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    // TODO
  ],
);
