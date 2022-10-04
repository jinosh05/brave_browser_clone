import 'package:flutter/material.dart';
import '../configs/app_dimensions.dart';
import '../constants/colors.dart';

/// Overlay for Home and other screens
/// use along with Stack
class GradientArc extends StatelessWidget {
  const GradientArc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = AppDimensions.width(40);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: AppColors.linGrad),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(size),
        ),
      ),
    );
  }
}
