import 'package:flutter/material.dart';
import 'package:now_ui_flutter/screens/draftHome.dart';

// screens
import 'package:now_ui_flutter/screens/introScreen.dart';
import 'package:now_ui_flutter/screens/pro.dart';
import 'package:now_ui_flutter/screens/home.dart';
import 'package:now_ui_flutter/screens/profile.dart';
import 'package:now_ui_flutter/screens/services.dart';
import 'package:now_ui_flutter/screens/settings.dart';
import 'package:now_ui_flutter/screens/register.dart';
import 'package:now_ui_flutter/screens/articles.dart';
import 'package:now_ui_flutter/screens/components.dart';
import 'package:now_ui_flutter/screens/inquriry.dart';
import 'package:now_ui_flutter/screens/getStarted.dart';
import 'package:now_ui_flutter/screens/mainScreen.dart';
import 'package:now_ui_flutter/screens/mainScreenVideo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Blixt Studios',
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: "/video",
        routes: <String, WidgetBuilder>{
          '/draft': (BuildContext context) => new DraftHome(),
          '/settings': (BuildContext context) => new Settings(),
          "/intro": (BuildContext context) => new Intro(),
          "/home": (BuildContext context) => new MainScreen(),
          "/pro": (BuildContext context) => new Pro(),
          "/profile": (BuildContext context) => new Profile(),
          "/articles": (BuildContext context) => new Articles(),
          "/components": (BuildContext context) => new Components(),
          "/account": (BuildContext context) => new Register(),
          "/ask": (BuildContext context) => new Inquiry(),
          "/start": (BuildContext context) => new Started(),
          "/services": (BuildContext context) => new Services(),
          "/video": (BuildContext context) => new MainVideoScreen(),
        });
  }
}
