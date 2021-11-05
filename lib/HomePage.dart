import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_ui/Pages/InstaMessengerPage.dart';
import 'package:insta_ui/Pages/StoryPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

   var storyLine = ["1","2","3","4","5","6","7","8","9","10","11","12"];

class _MyHomePageState extends State<MyHomePage> {

  Route createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.movie_creation_outlined,),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.shopping_basket_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.account_circle_rounded),
            label: '',
          ),
        ],
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text("Instagram",style: TextStyle(fontFamily: 'Bluestar',fontSize: 28),),
        ),
        actions: [
          IconButton(onPressed: (){print("");},icon: Icon(Icons.add_box_outlined),),
          IconButton(onPressed: (){print("");},icon: Icon(Icons.favorite_border_outlined),),
          IconButton(onPressed: (){Navigator.of(context).push(createRoute(InstaMessenger()));},icon: Icon(Icons.message_outlined),),
      ],
      ),
      // Story Line
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Story()));
                },
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10 ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1 / 1,
                  ),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0),side: BorderSide(color: Colors.deepOrange,
                          width: 3.0,
                        ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            // Post Line
            // Top bar
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 410,
                  height: 30,
                  alignment: FractionalOffset(1,1),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, top: 8,bottom: 5),
                        child: Icon(Icons.account_circle_rounded,color: Colors.white,size: 30,),
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
            ),
            //Post Image
            Padding(
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
            ),
            // Interactive post icons
            SizedBox(
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
            ),
            // Post Description
            Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
