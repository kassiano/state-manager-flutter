import 'dart:math';

import 'package:flutter/material.dart';
import 'package:warren_state_management/features/provider/provider_app.dart';
import 'package:warren_state_management/features/riverpod/riverpod_dice.dart';
import 'package:warren_state_management/features/riverpod/riverpod_dice_app.dart';
import 'package:warren_state_management/shared/repository/dice_repository_impl.dart';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';
import 'features/inherted/inherted_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final getDiceUseCase = GetDiceNumber(DiceRepositoryImpl(), Random());

  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Warren flutter state managment',
      theme: ThemeData(
         primarySwatch: Colors.blue,
      ),
      initialRoute: "/riverpod",
      routes: {
        "/inherted": (context) => InhertedApp(),
        "/provider": (context) => ProviderApp(),
        "/riverpod": (context) => RiverpodDiceApp(),
      },
    );
  }
}
