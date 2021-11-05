import 'package:flutter/material.dart';

class postDescription extends StatefulWidget {
  const postDescription({Key? key}) : super(key: key);

  @override
  _postDescriptionState createState() => _postDescriptionState();
}

class _postDescriptionState extends State<postDescription> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text("28.992 diğer kişi beğendi",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0,top: 4,bottom: 4),
              child: Text("469 yorumun tümünü gör",style: TextStyle(color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text("7 saat önce",style: TextStyle(color: Colors.grey,fontSize: 12),),
            ),
          ],
        ),
      ],
    );
  }
}
