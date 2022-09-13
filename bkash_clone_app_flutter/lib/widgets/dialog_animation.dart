import 'package:flutter/material.dart';

import 'dialog_widget.dart';

class DialogAnim extends StatefulWidget {
  const DialogAnim({Key? key}) : super(key: key);

  @override
  State<DialogAnim> createState() => DialogAnimState();
}

class DialogAnimState extends State<DialogAnim>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: const Padding(
              padding: EdgeInsets.all(50.0),
              child: DialogWidget(),
            ),
          ),
        ),
      ),
    );
  }
}