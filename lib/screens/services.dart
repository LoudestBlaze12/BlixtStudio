import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getwidget/getwidget.dart';
import 'package:now_ui_flutter/widgets/listView.dart';


class Services extends StatefulWidget {

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {

  Color selected;

  //
  // List<GFListTile> serviceTiles = [
  //   GFListTile(
  //     // padding: EdgeInsets.all(5),
  //     titleText:'Photography',
  //     subTitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
  //     icon: Icon(Icons.favorite),
  //   ),
  //   GFListTile(
  //     titleText:'Videography',
  //     subTitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
  //     icon: Icon(Icons.favorite),
  //     onTap: (){
  //       print('Happy Birthday baby');
  //     },
  //   ),
  //   GFListTile(
  //     titleText:'Web Design',
  //     subTitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
  //     icon: Icon(Icons.favorite),
  //     onTap: (){
  //       print('Happy Birthday baby');
  //     },
  //   ),
  //   GFListTile(
  //     titleText:'App Development',
  //     subTitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
  //     icon: Icon(Icons.favorite),
  //     onTap: (){
  //       print('Happy Birthday baby');
  //     },
  //   ),
  //   GFListTile(
  //     titleText:'Marketing',
  //     subTitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
  //     icon: Icon(Icons.favorite),
  //     onTap: (){
  //       print('Happy Birthday baby');
  //     },
  //   ),
  // ];


  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];

  final List<Service> serviceList = [

    Service(name:"Web Design", description: "Hello Free world", url: "https://images.pexels.com/photos/163097/twitter-social-media-communication-internet-network-163097.jpeg?cs=srgb&dl=pexels-pixabay-163097.jpg&fm=jpg"),
    Service(name:"App Development", description: "Hello Free world", url: "https://images.pexels.com/photos/270408/pexels-photo-270408.jpeg?cs=srgb&dl=pexels-pixabay-270408.jpg&fm=jpg"),
    Service(name:"Photography", description: "Hello Free world", url: "https://images.pexels.com/photos/598917/pexels-photo-598917.jpeg?cs=srgb&dl=pexels-kaique-rocha-598917.jpg&fm=jpg"),
    Service(name:"Videography", description: "Hello Free world", url:  "https://images.pexels.com/photos/403495/pexels-photo-403495.jpeg?cs=srgb&dl=pexels-md-iftekhar-uddin-emon-403495.jpg&fm=jpg"),
    Service(name:"Marketing", description: "Hello Free world", url: "https://images.pexels.com/photos/590016/pexels-photo-590016.jpeg?cs=srgb&dl=pexels-lukas-590016.jpg&fm=jpg"),

  ];



  @override
  Widget build(BuildContext context) {
    var myIndex;

    return Scaffold(
      body: Container(
      color: Color.fromRGBO(250, 249, 250, 1),
      child: Column(
        children: [
          SizedBox(height: 75,),
          Text('How Can We Help?',
          style: TextStyle(
            fontSize: 25
          ),),
          SizedBox(height: 40,),
          // ListViewHome()
          // Expanded(child: ListViewer(
          // )
          // ),
          GFCarousel(
            height: 500,
            items: serviceList.map(
                  (currentService) {
                return GestureDetector(
                  onTap: (){
                    print('Ol Happy day with ${currentService.name}');
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(
                              currentService.url,
                              fit: BoxFit.cover,
                              width: 1000.0
                          ),
                        ),
                        height: 300,
                      ),
                      Text(currentService.name),
                    ],
                  )
                );
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                index;

              });
            },
          ),
        ],
      ),
    ),
    );
  }
}

class Service {

  Service({this.name, this.description, this.url});

  String name;
  String description;
  String url;
}


class ListViewHome extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  title: Text(titles[index]),
                  subtitle: Text(subtitles[index]),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                  trailing: Icon(icons[index])));
        });
  }
}