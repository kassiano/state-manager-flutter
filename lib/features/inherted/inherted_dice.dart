
import 'package:flutter/material.dart';
import 'package:warren_state_management/features/inherted/inherted_dice_controller.dart';
import 'package:warren_state_management/shared/styles/text_styles.dart';

class InhertedDice extends StatelessWidget {
  const InhertedDice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = InhertedDiceController.of(context);

    return Scaffold(
      appBar: AppBar(title: Text("Inherted Dice")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${controller?.value}", style: TextStyles.h1),
            ElevatedButton(onPressed: () => { 
              controller?.getNumber()
            }, child: Text("Rool dice")),
          ],
        )
      )
    );
  }
}

