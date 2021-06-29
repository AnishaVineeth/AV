import 'package:avapp/profile.dart';
import 'package:avapp/videos.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AV',
      home: MyHomePage(),
        debugShowCheckedModeBanner: false,

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9AF4C1),
        title: Text('AV'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: new DrawerHeader(child: new CircleAvatar(backgroundImage: AssetImage('images/FLOWER.jpeg'),)),
              color: Colors.tealAccent,
            ),
            SizedBox(height: 10),
            Center(child: Text('Anisha Vineeth',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            // Container(
            //   child: UserAccountsDrawerHeader(
            //       currentAccountPicture: CircleAvatar(
            //         backgroundColor : Color(0xff9AF4C1),
            //         backgroundImage: AssetImage('images/FLOWER.jpeg'),
            //       ),
            //       accountName: Text('Anisha Vineeth'),
            //       accountEmail: Text('anishaav02@gmail.com')),
            // ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text(
                'Gallery',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.ondemand_video),
              title: Text(
                'Videos',
                style: TextStyle(fontSize: 18.0),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Video()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(child: new Image.asset('images/FLOWER.jpeg')),
      ),
    );
  }
}
