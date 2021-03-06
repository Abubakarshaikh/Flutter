// Learn to use hero animations in Flutter apps.
// Understand how the animation controller works and create custom animations.
// Custom Flutter Animations with the Animation Controller
import 'package:flutter/material.dart';

class Demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Hero(
            tag: 'logo',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.house,
                  size: 100.0,
                ),
                ElevatedButton(
                  child: Text('Tarnsition'),
                  onPressed: () {
                    // navigation
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AnimationHero();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AnimationHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                child: Hero(
                  tag: 'logo',
                  child: Icon(Icons.house, size: 300),
                ),
              ),
              ElevatedButton(
                child: Text('popo'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
