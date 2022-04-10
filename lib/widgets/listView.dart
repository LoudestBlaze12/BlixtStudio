import 'package:flutter/material.dart';


class ListViewer extends StatefulWidget {

  @override
  _ListViewerState createState() => _ListViewerState();
}

class _ListViewerState extends State<ListViewer>{
  final numbers = List<String>.generate(7, (i) => "Number ${i + 10}");
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyContent(),
    );
  }


  bodyContent() {

    return ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Card  (
            child: ListTile(
              selected: selectedIndex == index ? true: false,
              selectedTileColor: Colors.blue[100],
              title: Text(numbers[index]),
              onTap: () {
                setState(() {
                  selectedIndex = index;

                });
              },
            ),
          );
        }
    );
  }
}