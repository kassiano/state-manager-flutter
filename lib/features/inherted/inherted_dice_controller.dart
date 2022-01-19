
import 'package:flutter/material.dart';
import 'package:warren_state_management/shared/usecase/get_dice_number.dart';

class InhertedDiceController extends InheritedNotifier<ValueNotifier<int>> {

  final GetDiceNumber getDiceNumberUseCase;

  InhertedDiceController(this.getDiceNumberUseCase, {
    Key? key,
    required Widget child
  }) : super(key: key, child: child, notifier: ValueNotifier(0));

  int? get value => notifier?.value;

  getNumber() async {
    final number = await getDiceNumberUseCase.execute();
    notifier?.value = number;
  }

  static InhertedDiceController? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InhertedDiceController>();
  }
}