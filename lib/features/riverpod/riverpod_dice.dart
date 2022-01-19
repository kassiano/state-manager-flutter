
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:warren_state_management/features/riverpod/riverpod_dice_provider.dart';
import 'package:warren_state_management/shared/styles/text_styles.dart';

class RiverpodDice extends ConsumerWidget {
  const RiverpodDice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final controller = ref.read(diceControllerProvider);
    final diceValue = ref.watch(diceNumberProvider);

    return Scaffold(
        appBar: AppBar(title: Text("Riverpod Dice")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                diceValue.when(
                    data: (data) => Text("${data}", style: TextStyles.h1),
                    error: (e, r) => Text("Error"),
                    loading: () => CircularProgressIndicator()
                ),
                ElevatedButton(onPressed: () => {
                  controller.getNumber()
                }, child: Text("Rool dice WW")),
              ],
            )
        )
    );
  }
}