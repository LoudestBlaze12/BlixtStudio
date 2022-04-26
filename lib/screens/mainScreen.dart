import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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



class MainScreen extends StatelessWidget {



  List<Widget> customList = [


    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text('Good Afternoon'),
            Text('John W.'),
          ],
        ),
        GFAvatar(
          backgroundImage:NetworkImage("https://images.unsplash.com/photo-1650765815206-2884e7d"
              "31cab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
        ),
      ],
    ),
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
    Text('that permits the user to use this toggle to mark check when it is in ON state '
        'and mark unchecked when it is in OFF state. The toggle switch basically switches from '
        'ON to OFF state and vice-ve'
        'rsa. Let us look at a simple example of GFToggle in the below code. Work'),
    Text('Hello Papa'),
    Text('I Still Got It'),
  ];


  @override
  Widget build(BuildContext context) {
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

                    // CarouselSlider(
                    //   options: CarouselOptions(height: 500.0,
                    //       disableCenter: false,
                    //       enlargeStrategy: CenterPageEnlargeStrategy.height,
                    //       pageSnapping: true,
                    //       scrollDirection: Axis.vertical),
                    //   items: customList
                    //
                    //
                    //   // [1,2,3,4,5].map((i) {
                    //   //   return Builder(
                    //   //     builder: (BuildContext context) {
                    //   //       return Container(
                    //   //           height: MediaQuery.of(context).size.height ,
                    //   //           margin: EdgeInsets.symmetric(vertical: 5.0),
                    //   //           decoration: BoxDecoration(
                    //   //               color: Colors.amber
                    //   //           ),
                    //   //           child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    //   //       );
                    //   //     },
                    //   //   );
                    //   // }).toList(),
                    //
                    //
                    // )
                  ],
                ),
              )
              // CustomScrollView(
              //   slivers: [
              //     SliverAppBar(
              //       backgroundColor: Color.fromARGB(0, 0, 0, 0),
              //       pinned: true,
              //       flexibleSpace: FlexibleSpaceBar(
              //           background: Padding(
              //             padding: EdgeInsets.only(top: 5),
              //             child: Image.asset('assets/imgs/logo.png'),
              //           )
              //       ),
              //     ),
              //     SliverFillRemaining(
              //       hasScrollBody: false,
              //       child: Column(
              //         children: <Widget>[
              //           const Text('Header'),
              //           Expanded(child:Column(
              //             children: [
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //               Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incid'
              //                   'idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis n'
              //                   'ostrud exercitation u'
              //                   'llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dol'
              //                   'or in reprehenderit in vo'
              //                   'luptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden'
              //                   't, sunt in culp'
              //                   'a qui officia deserunt mollit anim id est laborum.'),
              //
              //
              //             ],
              //           )),
              //
              //
              //
              //           const Text('Footer'),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),

              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.stretch,
              //   children: [
              //     Text(' Hi Papa'),
              //     // CustomScrollView(
              //     //   slivers: [
              //     //     SliverFillRemaining(
              //     //       hasScrollBody: false,
              //     //       child: Column(
              //     //         children: <Widget>[
              //     //        Text('Header'),
              //     //           Container(color: Colors.red),
              //     //         Text('Footer'),
              //     //         ],
              //     //       ),
              //     //     ),
              //     //   ],
              //     // ),
              //     // SingleChildScrollView(
              //     //   scrollDirection: Axis.vertical,
              //     //   child: Stack(
              //     //     children: [
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //       Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore '
              //     //           'et dolore magna aliqua. Urna duis convallis convallis tellus id interdum velit laoreet. Nec feugiat'
              //     //           ' nisl pretium fusce. Ultrices in iaculis nunc sed augue lacus viverra vitae congue. Orci porta'
              //     //           ' non pulvinar neque laoreet suspendisse interdum consectetur. '),
              //     //
              //     //     ],
              //     //   ),
              //     // ),
              //   ],
              // ),
            ),
        )
    );
  }
}
