import 'package:flutter/material.dart';
import 'package:food_ui_kit/constants.dart';

class SelectionTitle extends StatelessWidget {
  const SelectionTitle({Key? key, required this.press, required this.title})
      : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      TextButton(
        onPressed: press,
        style: TextButton.styleFrom(primary: kActiveColor),
        child: Text(
          "See All",
        ),
      )
    ]);
  }
}
