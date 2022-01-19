

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:warren_state_management/features/provider/provider_dice_controller.dart';
import 'package:warren_state_management/shared/styles/text_styles.dart';

class ProviderDice extends StatelessWidget {
  const ProviderDice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Provider.of<ProviderDiceController>(context);

    return Scaffold(
        appBar: AppBar(title: Text("Provider Dice")),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("${controller.diceNumber}", style: TextStyles.h1),
                ElevatedButton(onPressed: () => {
                  controller.getNumber()
                }, child: Text("Rool dice")),
              ],
            )
        )
    );
  }
}