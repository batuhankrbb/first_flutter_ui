import 'package:workout_design/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      width: context.dynamicWidth(0.9),
      height: context.dynamicHeight(0.15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 50, child: sportPhoto(context)),
          Spacer(
            flex: 6,
          ),
          Expanded(
            flex: 50,
            child: videoInfoTexts(context),
          ),
        ],
      ),
    );
  }

  Widget videoInfoTexts(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: Text(
            "Sport in the office",
            style: context.theme.textTheme.headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        FittedBox(
          child: Text(
            "30 min",
            style:
                context.theme.textTheme.subtitle1.copyWith(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget sportPhoto(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.15),
      width: context.dynamicWidth(0.3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          "assets/photo3.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
