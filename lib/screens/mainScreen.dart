import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';

import 'package:now_ui_flutter/constants/Theme.dart';

import 'package:now_ui_flutter/widgets/drawer.dart';
import 'package:now_ui_flutter/widgets/navbar.dart';
import 'package:now_ui_flutter/widgets/card-horizontal.dart';
import 'package:now_ui_flutter/widgets/card-small.dart';
import 'package:now_ui_flutter/widgets/card-square.dart';
import 'package:now_ui_flutter/widgets/card-category.dart';
import 'package:now_ui_flutter/widgets/slider-product.dart';


class Service {

  Service({this.name, this.description, this.url,this.padding});

  String name;
  String description;
  String url;
  double pad;
  EdgeInsets padding;

}


class MainScreen extends StatelessWidget {

  List<Widget> innerList = [
    Text('Hey Squidward'),
    Text('Hey Squidward'),
    Text('Hey Squidward')
  ];

  final List<Service> serviceList = [

    Service(name:"Web Design",
        padding: EdgeInsets.symmetric(horizontal:10),
        url: "https://images.pexels.com/photos/163097/twitter-social-media-communication-internet-network-163097.jpeg?cs=srgb&dl=pexels-pixabay-163097.jpg&fm=jpg", ),
    Service(name:"App Development",
        padding: EdgeInsets.symmetric(horizontal: 10),
        url: "https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg"),
    Service(name:"Photography",
        padding: EdgeInsets.symmetric(horizontal: 10),
        url: "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?cs=srgb&dl=pexels-kaique-rocha-598917.jpg&fm=jpg"),
    Service(name:"Videography",
        padding: EdgeInsets.symmetric(horizontal: 10),
        url:  "https://images.pexels.com/photos/403495/pexels-photo-403495.jpeg?cs=srgb&dl=pexels-md-iftekhar-uddin-emon-403495.jpg&fm=jpg"),
    Service(name:"Marketing",
        padding: EdgeInsets.symmetric(horizontal: 10),
        url: "https://images.pexels.com/photos/590016/pexels-photo-590016.jpeg?cs=srgb&dl=pexels-lukas-590016.jpg&fm=jpg"),

  ];



  @override
  Widget build(BuildContext context) {


    List<Widget> customList = [

      //User Profile Section
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Afternoon',
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600
                ),
              ),
              Text('John W.',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),),
            ],
          ),
          GFAvatar(
            backgroundImage:NetworkImage("https://images.unsplash.com/photo-1650765815206-2884e7d"
                "31cab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
          ),
        ],
      ),

      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Explore Services'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      print("Ol Happy Day PAPA");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width / 3
                        ),
                      ),
                      height: 230,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Ol Happy Day PAPA");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width / 3
                        ),
                      ),
                      height: 230,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Ol Happy Day PAPA");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width / 3
                        ),
                      ),
                      height: 230,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Ol Happy Day PAPA");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width / 3
                        ),
                      ),
                      height: 230,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      print("Ol Happy Day PAPA");
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width / 3
                        ),
                      ),
                      height: 230,
                    ),
                  ),
                ],
              ),
            ),
            // GFCarousel(
            //   enableInfiniteScroll: true,
            //   viewportFraction: 0.4,
            //   height: 250,
            //   items: serviceList.map(
            //         (currentService) {
            //       return GestureDetector(
            //           onTap: (){
            //             print('Ol Happy day with ${currentService.name}');
            //             Navigator.pop(context);
            //           },
            //           child: Column(
            //
            //             children: [
            //               Container(
            //                 margin: currentService.padding,
            //                 child: ClipRRect(
            //                   borderRadius: BorderRadius.all(Radius.circular(5.0)),
            //                   child: Image.network(
            //                       currentService.url,
            //                       fit: BoxFit.cover,
            //                       width: 1000.0
            //                   ),
            //                 ),
            //                 height: 230,
            //               ),
            //
            //             ],
            //           )
            //       );
            //     },
            //   ).toList(),
            //   // onPageChanged: (index) {
            //   //   setState(() {
            //   //     index;
            //   //
            //   //   });
            //   // },
            // ),
          ],
        ),
      ),


      Padding(padding: EdgeInsets.all(50),
        child: Text(' the user to use this toggle to mark check when it is in ON state '
            'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
            'ON to OFF state and vice-ve'
            'rsa. Let us look at a simple example of GFToggle in the below code. Work'),),

      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('that permits the user to use this toggle to mark check when it is in ON state '
          'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
          'ON to OFF state and vice-ve'
          'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
      Text('Hello Papa'),
      Text('I Still Got It'),
    ];
    //End of Content List


    return Scaffold(
        backgroundColor: NowUIColors.bgColorScreen,
        // drawer: NowDrawer(currentPage: "Articles"),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imgs/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
            child: SafeArea(
              child:  ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding: EdgeInsets.symmetric(vertical: 16),
                      child: Image.asset('assets/imgs/logo.png',
                        width: 120,
                      ),
                    ),
                    Text(''),
                    Expanded(child: ListView(children: customList,))


                  ],
                ),
              )
            ),
        )
    );
  }
}
