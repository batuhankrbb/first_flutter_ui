import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:workout_design/extensions/context_extension.dart';

class WorkoutInfo extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const WorkoutInfo(
      {Key key, @required this.icon, @required this.text, @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 30,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              icon,
              color: color,
              size: 30,
            ),
          ),
        ),
        Spacer(
          flex: 6,
        ),
        Expanded(
          flex: 55,
          child: Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              child: Text(
                text,
                style: context.theme.textTheme.headline6
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/*

Expanded(
          flex: 50,
          child: Align(
            alignment: Alignment.centerLeft,
            child: FittedBox(
              child: Text(
                text,
                style: context.theme.textTheme.headline6
                    .copyWith(color: Colors.black),
              ),
            ),
          ),
        )
 */
