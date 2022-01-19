

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:warren_state_management/features/riverpod/riverpod_dice.dart';

class RiverpodDiceApp extends StatelessWidget {
  RiverpodDiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: RiverpodDice()
    );
  }
}