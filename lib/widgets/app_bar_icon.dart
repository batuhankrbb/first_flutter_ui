import 'package:flutter/material.dart';
import 'package:workout_design/extensions/context_extension.dart';

class AppBarIcon extends StatelessWidget {
  AppBarIcon({Key key, @required this.iconData}) : super(key: key);

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 40,
      height: 40,
      decoration: containerDecoration(),
      child: Icon(
        iconData,
        color: Colors.black,
      ),
    );
  }

  BoxDecoration containerDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 4)
        ]);
  }
}
