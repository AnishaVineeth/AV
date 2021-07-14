import 'dart:ui';

import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  // const MyProfile({ Key? key }) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Center(
          child: new Container(
            width: 190.0,
            height: 190.0,
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new AssetImage('images/FLOWER.jpeg'))),
          ),
        ),
        ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(16),
          children: [
            buildNameCard(),
            buildMailCard(),
            buildSocialCard(),
            buildImageInteractionCard(),
            buildChatCard()
          ],
        ),
      ]));

  Widget buildNameCard() => Card(
        shadowColor: Colors.green,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.greenAccent, Colors.green[200]],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                '   Anisha Vineeth  ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      );

  Widget buildMailCard() => Card(
        shadowColor: Colors.green,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.greenAccent, Colors.green[200]],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                '   Email : anishaav02@gmail.com  ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      );
  Widget buildSocialCard() => Card(
        shadowColor: Colors.green,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.greenAccent, Colors.green[200]],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                '   Social Media Profile  ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      );

  Widget buildImageInteractionCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
                  ),
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  left: 16,
                  child: Text(
                    'Cats rule the world!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 0),
              child: Text(
                'The cat is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                FlatButton(
                  child: Text('Buy Cat'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('Know more..'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      );
      Widget buildChatCard() => Card(
        shadowColor: Colors.green,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.greenAccent, Colors.green[200]],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                '   Lets talk!  ',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      );
}
