

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warren_state_management/features/provider/provider_dice.dart';
import 'package:warren_state_management/features/provider/provider_dice_controller.dart';
import 'package:warren_state_management/shared/repository/dice_repository_impl.dart';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';

class ProviderApp extends StatelessWidget {
  ProviderApp({Key? key}) : super(key: key);

  final getDiceUseCase = GetDiceNumber(DiceRepositoryImpl(), Random());

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) =>  ProviderDiceController(
          getDiceNumberUseCase: getDiceUseCase
        ),
        child: ProviderDice(),
    );
  }
}
