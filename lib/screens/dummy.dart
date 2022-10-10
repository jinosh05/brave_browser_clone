import 'package:brave_browser_clone/configs/app_dimensions.dart';
import 'package:brave_browser_clone/configs/space.dart';
import 'package:brave_browser_clone/constants/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/gradient_arc.dart';

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blackRussian,
        title: Padding(
          padding: Space.vf(AppDimensions.normalize(
            2,
          )),
          child: Container(
            padding: Space.all(
              AppDimensions.normalize(5),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                AppDimensions.normalize(2),
              ),
              color: AppColors.secondary,
            ),
          ),
        ),
      ),
      body: Column(
        children: const [
          GradientArc(),
        ],
      ),
    );
  }
}
