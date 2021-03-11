import 'package:flutter/material.dart';
import 'package:workout_design/extensions/context_extension.dart';
import 'package:workout_design/widgets/all_widgets.dart';
import 'package:workout_design/widgets/video_workout_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        padding: EdgeInsets.only(left: 16, bottom: 0, right: 0, top: 8),
        child: screenItems(context),
      ),
    );
  }

  Column screenItems(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 10,
          child: titleText("Upcoming Workout", context),
        ),
        Spacer(
          flex: 4,
        ),
        Expanded(
          flex: 80,
          child: workoutCards(),
        ),
        Spacer(
          flex: 4,
        ),
        Expanded(
          flex: 10,
          child: titleText("Video Workout", context),
        ),
        Expanded(
          flex: 30,
          child: videoCards(),
        )
      ],
    );
  }

  Widget workoutCards() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        WorkoutCard(
          sportName: "Running",
          minutes: 30,
          burnedCalories: 53,
          photoName: "assets/photo1.jpg",
        ),
        WorkoutCard(
          sportName: "Running",
          minutes: 30,
          burnedCalories: 53,
          photoName: "assets/photo1.jpg",
        ),
        WorkoutCard(
          sportName: "Running",
          minutes: 30,
          burnedCalories: 53,
          photoName: "assets/photo1.jpg",
        ),
      ],
    );
  }

  Widget videoCards() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        VideoCard(),
        VideoCard(),
        VideoCard(),
        VideoCard(),
        VideoCard(),
      ],
    );
  }

  Widget titleText(String text, BuildContext context) {
    return Text(
      text,
      style: context.theme.textTheme.headline4
          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        "Home",
        style: context.theme.textTheme.headline5.copyWith(color: Colors.black),
      ),
      centerTitle: true,
      leading: AppBarIcon(iconData: Icons.person),
      actions: [AppBarIcon(iconData: Icons.format_line_spacing)],
    );
  }
}
