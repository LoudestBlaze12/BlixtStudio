
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:now_ui_flutter/constants/Theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:getwidget/getwidget.dart';



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
            //Pull up tab
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


            //Panel code
            Container(
                height: 675,
                //panel Background
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(200),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
                ),

                //Main Layout Column
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //Login In Forum
                    Padding(padding: EdgeInsets.symmetric(horizontal: 25,
                    ),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 50,),

                        Text("Login",style: TextStyle(color: Colors.white,
                            fontSize: 30),),

                        SizedBox(height: 5,),


                        Text("Sign into your account",style: TextStyle(color: Colors.white,
                            fontSize: 15),),


                        SizedBox(height: 40,),

                        //Email field Section
                        Text("YOUR EMAIL", style: TextStyle(color: Colors.white), textAlign: TextAlign.left,),
                        SizedBox(height: 10,),
                        TextField(style: TextStyle(
                          color: Colors.white,

                        ),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 30, 26, 26),
                              hintText: " "
                          ),
                        ),


                        SizedBox(height: 50,),

                        //Password field Section
                        Text("YOUR PASSWORD", style: TextStyle(color: Colors.white), textAlign: TextAlign.left,),
                        SizedBox(height: 10,),
                        TextField(style: TextStyle(
                          color: Colors.white,

                        ),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 30, 26, 26),
                              hintText: " "
                          ),
                        ),
                        SizedBox(),
                        TextButton(child: Text("Forgot Password?", style: TextStyle(color: Colors.white), textAlign: TextAlign.left,),),

                      ],
                    ),
                    ),

                    //Login Button
                    Column(children: [
                      TextButton(child: Text("I don't have an account", style: TextStyle(color: Color.fromRGBO(255, 255, 255, .5)), textAlign: TextAlign.left,),),

                      GFButton(onPressed: (){
                        Navigator.pushNamed(context, "/services");
                      },
                          text: "Login",
                          textStyle: TextStyle(
                              fontSize: 20,
                              letterSpacing: 2
                          ),
                          size: 65,
                          fullWidthButton: true,
                          color: Color.fromRGBO(255, 124, 23, 1),
                          padding: EdgeInsets.only(top: 0, bottom: 15)
                      ),
                    ],)


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






