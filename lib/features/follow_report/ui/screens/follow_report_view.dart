import 'package:flutter/material.dart';
import 'package:radary/core/theming/app_colors.dart';

class StepProgressView extends StatelessWidget {
  final double width;
  final List<String> titles;
  final int curStep;
  final Color activeColor;
  final Color inactiveColor;
  final double lineWidth;

  const StepProgressView({
    super.key,
    required this.curStep,
    required this.titles,
    required this.width,
    required this.activeColor,
    this.inactiveColor = babyblue, // Default color
    this.lineWidth = 3.0, // Default width
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: width,
          child: Column(
            children: <Widget>[
              Row(
                children: _iconViews(),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _titleViews(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _iconViews() {
    List<Widget> list = [];
    for (int i = 0; i < titles.length; i++) {
      Color circleColor = (i == 0 || curStep > i) ? activeColor : inactiveColor;
      Color lineColor = (curStep > i) ? activeColor : inactiveColor;
      Color iconColor = (i == 0 || curStep > i) ? activeColor : inactiveColor;

      list.add(
        Container(
          width: 20.0,
          height: 20.0,
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(22.0)),
            border: Border.all(
              color: circleColor,
              width: 2.0,
            ),
          ),
          child: Icon(
            Icons.circle,
            color: iconColor,
            size: 12.0,
          ),
        ),
      );

      if (i != titles.length - 1) {
        list.add(
          Expanded(
            child: Container(
              height: lineWidth,
              color: lineColor,
            ),
          ),
        );
      }
    }
    return list;
  }

  List<Widget> _titleViews() {
    return titles.map((text) {
      return Expanded(
        child: Text(
          text,
          style: const TextStyle(color: blue),
          textAlign: TextAlign.center,
        ),
      );
    }).toList();
  }
}
