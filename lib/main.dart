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
import 'package:sizer/sizer.dart';
import 'package:now_ui_flutter/screens/photographyServices.dart';
import 'package:now_ui_flutter/screens/videographyServices.dart';
import 'package:now_ui_flutter/screens/ServicePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
              title: 'Blixt Studios',
              debugShowCheckedModeBanner: false,
// theme: ThemeData(fontFamily: 'Montserrat'),
              initialRoute: "/intro",
              routes: <String, WidgetBuilder>{
                '/draft': (BuildContext context) => new DraftHome(),
                '/settings': (BuildContext context) => new Settings(),
                "/intro": (BuildContext context) => new Intro(),
                "/OldHome": (BuildContext context) => new MainScreen(),
                "/pro": (BuildContext context) => new Pro(),
                "/profile": (BuildContext context) => new Profile(),
                "/articles": (BuildContext context) => new Articles(),
                "/components": (BuildContext context) => new Components(),
                "/account": (BuildContext context) => new Register(),
                "/ask": (BuildContext context) => new Inquiry(),
                "/start": (BuildContext context) => new Started(),
                "/services": (BuildContext context) => new Services(),
                "/home": (BuildContext context) => new MainVideoScreen(),
                "/photos": (BuildContext context) => new PhotographyScreen(),
                "/videos": (BuildContext context) => new VideoraphyScreen(),
                "/web": (BuildContext context) => new ServiceWidget(serviceName: "Web Design Services", serviceBody: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Eget nunc, eu quis nunc non potenti nulla ultricies. '
                    'At sed tincidunt nullam sed massa consectetur arcu libero.',

                  imageReference: "assets/imgs/Web.png",),


                "/market": (BuildContext context) => new ServiceWidget(serviceName: "Marketing Servcies", serviceBody: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Eget nunc, eu quis nunc non potenti nulla ultricies. '
                    'At sed tincidunt nullam sed massa consectetur arcu libero.',

                  imageReference: "assets/imgs/marketing.png",),


                "/software": (BuildContext context) => new ServiceWidget(serviceName: "Software Development", serviceBody: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Eget nunc, eu quis nunc non potenti nulla ultricies. '
                    'At sed tincidunt nullam sed massa consectetur arcu libero.',
                  imageReference: "assets/imgs/Software.png",),



              },
          )
          ;
        }
    );
  }
}

