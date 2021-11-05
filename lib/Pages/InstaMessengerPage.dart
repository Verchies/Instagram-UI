import 'package:flutter/material.dart';

class InstaMessenger extends StatefulWidget {
  const InstaMessenger({Key? key}) : super(key: key);

  @override
  _InstaMessengerState createState() => _InstaMessengerState();
}

class _InstaMessengerState extends State<InstaMessenger> {
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
          child: Text("Messages",style: TextStyle(fontFamily: 'Bluestar',fontSize: 28),),
        ),
      ),
      body: Center(),
    );
  }
}
