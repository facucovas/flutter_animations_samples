import 'package:fluter_animations_samples/main_animations_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(AnimationApp());

/*
  Implicit animations
  Animated from the current value to the new value.
*/

/*
  Explicit animations
  You can do the same that implicit animation but a little more.
*/

class AnimationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations Samples',
      home: MainAnimationsPage(),
    );
  }
}
