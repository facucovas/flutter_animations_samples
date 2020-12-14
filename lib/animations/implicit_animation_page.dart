import 'package:flutter/material.dart';

class ImplicitAnimationPage extends StatefulWidget {
  @override
  _ImplicitAnimationPageState createState() => _ImplicitAnimationPageState();
}

class _ImplicitAnimationPageState extends State<ImplicitAnimationPage> {
  bool fullSize = false;
  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Impicit Animation'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.bounceOut,
          color: Colors.blue,
          height: fullSize ? MediaQuery.of(context).size.height : 200,
          width: fullSize ? MediaQuery.of(context).size.width : 200,
          alignment: fullSize ? Alignment.bottomCenter : Alignment.center,
          child: InkWell(
            onTap: () {
              setState(() {
                fullSize = !fullSize;
                opacity = fullSize ? .5 : 1.0;
              });
            },
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: opacity,
              child: Text(
                'Tap Here!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: fullSize ? 50 : 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
