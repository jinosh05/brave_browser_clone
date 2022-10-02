import 'dart:developer';

import 'package:brave_browser_clone/configs/app_dimensions.dart';
import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    log(AppDimensions.inString());
    log(AppDimensions.width(100).toString());
    return Scaffold(
      body: Container(),
    );
  }
}
