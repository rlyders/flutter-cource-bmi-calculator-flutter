import 'package:flutter/material.dart';
import 'reusable_card.dart';
import '../constants.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlusMinusCard extends StatelessWidget {
  final String title;
  final Text childText;
  PlusMinusCard({this.title, this.childText, this.onValueChange});
  final Function(int addend) onValueChange;
  @override
  Widget build(BuildContext context) {
    return ReusableCard(
        colour: kActiveCardColor,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: kLabelTextStyle,
            ),
            childText,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundIconButton(
                  icon: FontAwesomeIcons.minus,
                  onPressed: onValueChange(-1),
                ),
                SizedBox(width: 10.0),
                RoundIconButton(
                  onPressed: onValueChange(1),
                  icon: FontAwesomeIcons.plus,
                ),
              ],
            )
          ],
        ));
  }
}
