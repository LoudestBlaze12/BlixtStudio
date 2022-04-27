import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:now_ui_flutter/screens/video_Widget.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:glass/glass.dart';
import 'package:now_ui_flutter/constants/Theme.dart';



class Service {

  Service({this.name, this.description, this.url,this.padding});

  String name;
  String description;
  String url;
  double pad;
  EdgeInsets padding;

}


class MainVideoScreen extends StatelessWidget {

 // Color primaryColor = Color.fromARGB(255, 255, 124, 23);
 Color primaryColor = Colors.white;


  @override
  Widget build(BuildContext context) {

    //This is a list that generates all the content below the logo
    List<Widget> customList = [

      //User Profile Section
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Good Afternoon',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text('John W.',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Colors.white,
                  ),),
              ],
            ),
            GFAvatar(
              size: GFSize.LARGE,
              backgroundImage:NetworkImage("https://images.unsplash.com/photo-1650765815206-2884e7d"
                  "31cab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
            ),
          ],
        ),
      ),

      SizedBox(height: 28,),

      //Explore Services Section Horizontal Section
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Section Title
            Padding(padding: EdgeInsets.only(left: 18),
            child: Row(
              children: [
                Text('Explore',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 28,
                  color: Colors.white,
                ),
                ),
                SizedBox(width: 5,),
                Text('Services',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: primaryColor,
                  ),)
              ],
            ),),

            SizedBox(height: 12,),
            //Horizontal Scroll Of Services
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //Photography Service
                  Padding(padding: EdgeInsets.only(left: 36, right: 10),
                  child: GestureDetector(
                    onTap: (){
                      print("We want Photography Services, get me right");
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 8), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),

                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 12),child: Text('Photography',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),),
                                  Padding(padding: EdgeInsets.only(right: 8, bottom: 8), child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [

                                          ImageIcon(
                                            AssetImage("assets/imgs/Round ButtonRight.png",),
                                            color: Colors.white,
                                            size: 19,
                                          ),

                                          ImageIcon(AssetImage("assets/imgs/Round ButtonShape.png"),
                                          color: Color.fromARGB(255, 0, 255, 191),),

                                        ],
                                      )

                                    ],
                                  ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          height: 180,
                        ).asGlass(tintColor: Colors.white,
                        clipBorderRadius: BorderRadius.all(Radius.circular(10.0),
                        ),
                        ),

                      ],
                    ),
                  ),),

                  //Videography Services
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: (){
                        print("We want Videography Services, get me right");
                      },
                      child: Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 36, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),


                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage("assets/imgs/Video.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 12),child: Text('Videography',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),),
                                    Padding(padding: EdgeInsets.only(right: 8, bottom: 8), child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            // ClipRRect(
                                            //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            //   child: Container(color: Colors.white,
                                            //     width: 20,
                                            //     height: 20,
                                            //   ),
                                            // ),
                                            ImageIcon(
                                              AssetImage("assets/imgs/Round ButtonRight.png",),
                                              color: Colors.white,
                                              size: 19,
                                            ),

                                            ImageIcon(AssetImage("assets/imgs/Round ButtonShape.png"),
                                              color: Color.fromARGB(255, 0, 255, 191),),

                                            // Icon(FontAwesomeIcons.chevronCircleRight,
                                            //   color: Color.fromARGB(255, 0, 255, 191),),

                                          ],
                                        )

                                      ],
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: 180,
                          ),

                        ],
                      ),
                    ),),

                  //Web Design Services
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: (){
                        print("We want Web Design Services, get me right");
                      },
                      child: Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 36, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              // child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                              //     fit: BoxFit.cover,
                              //     width: MediaQuery.of(context).size.width / 3
                              // ),

                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/imgs/Web.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 12),child: Text('Web Design',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),),
                                    Padding(padding: EdgeInsets.only(right: 8, bottom: 8), child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            // ClipRRect(
                                            //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            //   child: Container(color: Colors.white,
                                            //     width: 20,
                                            //     height: 20,
                                            //   ),
                                            // ),
                                            ImageIcon(
                                              AssetImage("assets/imgs/Round ButtonRight.png",),
                                              color: Colors.white,
                                              size: 19,
                                            ),

                                            ImageIcon(AssetImage("assets/imgs/Round ButtonShape.png"),
                                              color: Color.fromARGB(255, 0, 255, 191),),

                                            // Icon(FontAwesomeIcons.chevronCircleRight,
                                            //   color: Color.fromARGB(255, 0, 255, 191),),

                                          ],
                                        )

                                      ],
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: 180,
                          ),

                        ],
                      ),
                    ),),

                  //Marketing Services
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: (){
                        print("We want Marketing Services, get me right");
                      },
                      child: Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 36, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),


                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/imgs/Light.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 12),child: Text('Marketing',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),),
                                    Padding(padding: EdgeInsets.only(right: 8, bottom: 8), child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            // ClipRRect(
                                            //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            //   child: Container(color: Colors.white,
                                            //     width: 20,
                                            //     height: 20,
                                            //   ),
                                            // ),
                                            ImageIcon(
                                              AssetImage("assets/imgs/Round ButtonRight.png",),
                                              color: Colors.white,
                                              size: 19,
                                            ),

                                            ImageIcon(AssetImage("assets/imgs/Round ButtonShape.png"),
                                              color: Color.fromARGB(255, 0, 255, 191),),

                                            // Icon(FontAwesomeIcons.chevronCircleRight,
                                            //   color: Color.fromARGB(255, 0, 255, 191),),

                                          ],
                                        )

                                      ],
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: 180,
                          ),

                        ],
                      ),
                    ),),

                  //Software Development
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: (){
                        print("We want Software Development Services, get me right");
                      },
                      child: Stack(
                        children: [
                          Container(
                            // margin: EdgeInsets.only(left: 36, right: 10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              // child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
                              //     fit: BoxFit.cover,
                              //     width: MediaQuery.of(context).size.width / 3
                              // ),

                              child: Container(
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/imgs/Software.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 12, left: 16),child: Text('Software Development',
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),),
                                    Padding(padding: EdgeInsets.only(right: 8, bottom: 8), child: Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            // ClipRRect(
                                            //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                            //   child: Container(color: Colors.white,
                                            //     width: 20,
                                            //     height: 20,
                                            //   ),
                                            // ),
                                            ImageIcon(
                                              AssetImage("assets/imgs/Round ButtonRight.png",),
                                              color: Colors.white,
                                              size: 19,
                                            ),

                                            ImageIcon(AssetImage("assets/imgs/Round ButtonShape.png"),
                                              color: Color.fromARGB(255, 0, 255, 191),),

                                            // Icon(FontAwesomeIcons.chevronCircleRight,
                                            //   color: Color.fromARGB(255, 0, 255, 191),),

                                          ],
                                        )

                                      ],
                                    ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            height: 180,
                          ),

                        ],
                      ),
                    ),),

                ],
              ),
            ),

          ],
        ),
      ),


      //Client Portal
      SizedBox(height: 24,),
      Padding(padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            //Section Title
            Row(
              children: [
                Text('Client',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5,),
                Text('Portal',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: primaryColor,
                  ),)
              ],
            ),
            SizedBox(height: 8,),
            GestureDetector(child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),

              child: Container(
                height: 175,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imgs/ClientPortal.png"),
                    fit: BoxFit.cover,
                  ),
                ),

              ),
            ),
            onTap: (){
              print('Hello Portal');
            },)

          ],
        ),
      ),

      //Lets Chat
      SizedBox(height: 24,),
      Padding(padding: EdgeInsets.only(left: 18, right: 18, bottom: 32),
        child: Column(
          children: [
            //Section Title
            Row(
              children: [
                Text("Let's",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5,),
                Text('Chat',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: primaryColor,
                  ),)
              ],
            ),
            SizedBox(height: 8,),
            GestureDetector(child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              // child: Image.network("https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg",
              //     fit: BoxFit.cover,
              //     width: MediaQuery.of(context).size.width / 3
              // ),

              child: Container(
                height: 175,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/imgs/Chat.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
              onTap: (){
                print('Hello Portal');
              },)

          ],
        ),
      ),




    ];
    //End of Content List





    return Scaffold(
        backgroundColor: NowUIColors.bgColorScreen,
        // drawer: NowDrawer(currentPage: "Articles"),
        body: Stack(
          children: [
            VideoWidget().asGlass(
              frosted: true,
              blurX: 50.0,
              blurY: 50.0,
            ),

            Container(
              color: Color.fromARGB(15, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,).asGlass(
              tintColor: Colors.black,
              blurX: 5,
              blurY: 5
            ),

            SafeArea(
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

                      // Expanded(child: ListView(children: customList,))

                      Expanded(child: ListView(children: customList,
                      ),)

                    ],
                  ),
                )
            ),

          ],
        )
    );
  }
}
