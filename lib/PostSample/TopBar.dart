import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 410,
          height: 30,
          alignment: FractionalOffset(1,1),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0, top: 8,),
                child: Icon(Icons.account_circle,color: Colors.white,size: 30,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3,top: 14),
                child: Text("birparcatuhaftik", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 224.0,),
                child: IconButton(icon: Icon(Icons.more_vert),color: Colors.white,onPressed: (){},),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
