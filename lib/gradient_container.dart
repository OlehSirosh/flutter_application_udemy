import 'package:flutter/material.dart';
import 'package:flutter_application_udemy/dice_roller.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
const GradientContainer(this.color1, this.color2, {super.key});


  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startAlignment, end: endAlignment),
      ),
      child: const DiceRoller(),
    );
  }
}


//  the test code,same code.
  /*
    // final List<Color> colors;
    // @override
    // Widget build(context) {
    //   return Container(
    //     decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           colors: colors,
    //           begin: startAlignment,
    //           end: endAlignment),
    //     ),
    //     child: const Center(
    //       child: StyledText('Hello'),
    //     ),
    //   );
  }
}
*/