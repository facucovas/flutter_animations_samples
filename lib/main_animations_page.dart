import 'package:fluter_animations_samples/animations/implicit_animation_page.dart';
import 'package:flutter/material.dart';

class MainAnimationsPage extends StatelessWidget {
  void _handlerToPage(BuildContext context, Widget child) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => child));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animations'),
      ),
      body: ListView(
        children: [
          MaterialButton(
            child: Text('Implicit Animation'),
            onPressed: () => _handlerToPage(
              context,
              ImplicitAnimationPage(),
            ),
          ),
          MaterialButton(
            child: Text('Other Animation'),
            onPressed: () => _handlerToPage(
              context,
              ImplicitAnimationPage(),
            ),
          ),
        ],
      ),
    );
  }
}
