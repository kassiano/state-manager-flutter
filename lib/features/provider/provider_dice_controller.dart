
import 'package:flutter/material.dart';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';

class ProviderDiceController extends ChangeNotifier {

    final GetDiceNumber getDiceNumberUseCase;
    ProviderDiceController({ required this.getDiceNumberUseCase });

    int _diceNumber = 0;
    int get diceNumber => _diceNumber;

    getNumber() async {
      final number = await getDiceNumberUseCase.execute();
      _diceNumber = number;
      notifyListeners();
    }

}