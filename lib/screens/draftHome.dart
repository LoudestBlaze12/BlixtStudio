import 'package:flutter/material.dart';

import 'package:now_ui_flutter/constants/Theme.dart';
import 'package:now_ui_flutter/widgets/navbar.dart';
import 'package:now_ui_flutter/widgets/card-horizontal.dart';
import 'package:now_ui_flutter/widgets/card-small.dart';
import 'package:now_ui_flutter/widgets/card-square.dart';
import 'package:now_ui_flutter/widgets/drawer.dart';


class DraftHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: NowUIColors.bgColorScreen,
        // key: _scaffoldKey,
        drawer: NowDrawer(currentPage: "Home"),
        body: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
          ),
        ));
  }


}