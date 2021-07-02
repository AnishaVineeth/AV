import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:avapp/videoplayer_widget.dart';

class Video extends StatefulWidget {
 // const Video({ Key? key }) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {

  VideoPlayerController controller;
  
  @override
  // void initState(){
  //   super.initState();
  //   controller=VideoPlayerController.network('https://www.youtube.com/watch?v=EngW7tLk6R8')
  //   ..addListener(()=> setState((){}))
  //   ..setLooping(true)
  //   ..initialize().then((_) => controller.play());
  // }

  // @override
  // void dispose(){
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff9AF4C1),
        title: Text('AV'),
      ),
      body: Card(
        elevation: 50,
        color: Colors.green[100],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Heyyyy'),
          ],
        ),)
    );
  //  return VideoPlayerWidget(controller: controller); 
  }
}