import 'package:flutter/material.dart';
import 'package:workout_design/extensions/context_extension.dart';
import 'package:workout_design/widgets/workout_info_widget.dart';

class WorkoutCard extends StatelessWidget {
  final String sportName;
  final int minutes;
  final int burnedCalories;
  final String photoName;

  const WorkoutCard(
      {Key key,
      @required this.sportName,
      @required this.minutes,
      @required this.burnedCalories,
      @required this.photoName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: context.dynamicWidth(0.7),
      height: context.dynamicHeight(0.55),
      decoration: buildBoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: workoutPhoto(context),
              flex: 65,
            ),
            Spacer(
              flex: 4,
            ),
            Expanded(
              child: informationText(context),
              flex: 23,
            ),
            Spacer(
              flex: 4,
            ),
            Expanded(
              flex: 30,
              child: bottomInformation(context),
            )
          ],
        ),
      ),
    );
  }

  Widget bottomInformation(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: WorkoutInfo(
            icon: Icons.access_time_sharp,
            text: "$minutes min",
            color: Colors.black,
          ),
          flex: 55,
        ),
        Spacer(
          flex: 10,
        ),
        Expanded(
          flex: 45,
          child: WorkoutInfo(
              icon: Icons.local_fire_department_sharp,
              text: "$burnedCalories",
              color: Colors.orange),
        ),
        Spacer(
          flex: 10,
        )
      ],
    );
  }

  Widget informationText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 80,
            child: FittedBox(
              child: Text(
                sportName,
                style: context.theme.textTheme.headline5.copyWith(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Spacer(
            flex: 10,
          ),
          Expanded(
            flex: 50,
            child: FittedBox(
              child: Text(
                "Mart 8, 2021",
                style: context.theme.textTheme.subtitle1
                    .copyWith(fontSize: 18, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget workoutPhoto(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.8),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            photoName,
            fit: BoxFit.fill,
          )),
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 8,
              blurRadius: 8)
        ]);
  }
}
