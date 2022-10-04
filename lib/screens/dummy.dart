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
      body: Column(
        children: const [
          GradientArc(),
        ],
      ),
    );
  }
}
