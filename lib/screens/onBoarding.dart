import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:now_ui_flutter/constants/Theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



class Intro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IntroState();
  }
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {

    bool _visible = true;

    Timer(Duration(seconds: 15), () {
      print("Yeah, this line is printed immediately");
    });



    return Scaffold(
      body: SlidingUpPanel(
        body: Container(
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Build your project',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'Build your dreams',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'Build with Blixt',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),

              ],

              totalRepeatCount: 1,


            ),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgs/introBack.png"),
                fit: BoxFit.cover,
              )
          ),
// color: Colors.orange,
        ),
        maxHeight: 700.0,
        minHeight: 50.0,
        panel:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedOpacity(opacity: _visible ? 1.0 : 0.0, duration: Duration(milliseconds: 500),
              child: Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Center(child: Container(
                    color: Colors.white.withAlpha(200),
                    width: 150.0,
                    height: 5.0,

                  )
                  )
              ),),

            Container(
                height: 675,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(200),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
                ),
                child: Column(
                  children: [
                    Text("Login",style: TextStyle(color: Colors.white),),
                    Text("Sign in to your account")

                  ],
                )
            ),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(70),
            blurRadius: 40,

          ),
        ],
        color: Colors.green.withAlpha(0),

        onPanelClosed: () {
          setState(() {
            _visible = false;
          });
        },

      ),


    );
  }
}

// BackdropFilter(
// filter: ImageFilter.blur(sigmaX: 10, sigmaY: 0),
// child: Container(
// color: Colors.black.withOpacity(.2),
// ),
// ),






