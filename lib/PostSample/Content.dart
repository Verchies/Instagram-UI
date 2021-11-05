import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0,bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("asset/post.png"),
            fit: BoxFit.fill,
          ),

        ),
        width: 410,
        height: 420,
      ),
    );
  }
}
