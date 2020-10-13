

import 'package:flutter/material.dart';

class BadgeRedDot extends StatelessWidget {
  final Widget child;
  BadgeRedDot({this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: child
        ),
        Container(
          width: 9,
          height: 9,
          decoration: BoxDecoration(
              color: Colors.red[900],
              shape: BoxShape.circle
          ),
        )
      ],
    );
  }
}
