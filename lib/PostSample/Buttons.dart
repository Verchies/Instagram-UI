import 'package:flutter/material.dart';

class postButtons extends StatefulWidget {
  const postButtons({Key? key}) : super(key: key);

  @override
  _postButtonsState createState() => _postButtonsState();
}

class _postButtonsState extends State<postButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
        [
          Padding(
            padding: const EdgeInsets.only(left: 5.0,bottom: 10),
            child: Icon(Icons.favorite_border,color: Colors.white,size: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,bottom: 10),
            child: Icon(Icons.messenger_outline_rounded, color: Colors.white,size: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,bottom: 10),
            child: Icon(Icons.send_rounded,color: Colors.white,size: 30,),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 5.0,bottom: 10),
            child: Icon(Icons.download_rounded,color: Colors.white,size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0,bottom: 10,right: 5),
            child: Icon(Icons.bookmark_border_rounded,color: Colors.white,size: 30),
          ),
        ],
      ),
    );
  }
}
