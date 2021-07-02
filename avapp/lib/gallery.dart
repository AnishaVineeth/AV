import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  // const Gallery({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9AF4C1),
        title: Text('AV'),
      ),
      body: Container(
          child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            crossAxisSpacing: 10.0, 
            mainAxisSpacing: 10.0
            ),
        children: [
          Container(
            child: Image.asset('images/FLOWER.jpeg',fit: BoxFit.cover,),
          ),
          Container(
            child: Image.asset(
              'images/green_pastel_flo.jpeg',fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.asset(
              'images/pumpkin-pancakes.jpeg',fit: BoxFit.cover
            ),
          ),
          Container(
            child: Image.asset(
              'images/FLOWER.jpeg',fit: BoxFit.cover
            ),
          ),
          Container(
            child: Image.asset(
              'images/green_pastel_flo.jpeg',fit: BoxFit.cover
            ),
          ),
          Container(
            child: Image.asset(
              'images/pumpkin-pancakes.jpeg',fit: BoxFit.cover
            ),
          ),
          Container(
            child: Image.asset(
              'images/FLOWER.jpeg',fit: BoxFit.cover
            ),
          ),
          Container(
            child: Image.asset(
              'images/green_pastel_flo.jpeg',fit: BoxFit.cover
            ),
          ),
          Container(
            child: Image.asset(
              'images/pumpkin-pancakes.jpeg',fit: BoxFit.cover
            ),
          ),
          Container(
            child: Image.asset(
              'images/FLOWER.jpeg',fit: BoxFit.cover
            ),
          )
        ],
      )),
    );
  }
}
