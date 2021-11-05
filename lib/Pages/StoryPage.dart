import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text("Story",style: TextStyle(fontFamily: 'Bluestar',fontSize: 28),),
        ),
      ),
      body: Center(),
    );
  }
}

