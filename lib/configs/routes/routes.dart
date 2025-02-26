import 'package:flutter/material.dart';
import 'package:quiz_game_mobile/configs/routes/paths.dart';
import 'package:quiz_game_mobile/pages/auth/login.dart';
import 'package:quiz_game_mobile/pages/onboarding.dart';


Map<String, WidgetBuilder> appRoutes = {
  AppViewsPaths.onboarding: (context) => const Onboarding(),
  AppViewsPaths.login: (context) => const Login(),
};