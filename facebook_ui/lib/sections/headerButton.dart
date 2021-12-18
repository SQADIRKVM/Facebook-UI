import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  // Using Header
  // Using PostCard footer
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButton({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}
