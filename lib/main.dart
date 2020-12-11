import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child:Column(children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundColor: Colors.white60,
                  backgroundImage: AssetImage('images/xylo.png'),
                ),
              ),
              SizedBox(height: 10.0,),
              Text('XyLo-Phone', style: TextStyle(
                fontFamily: 'Langar',
                fontSize: 30.0,
                color: Colors.purple,
                letterSpacing: 2.5,
              ),),
              SizedBox(
                width: 200.0,
                child: Divider(
                  color: Colors.purple,
                  thickness: 2.5,
                ),),
              SizedBox(height: 40.0,),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minWidth: 500.0,
                height: 50.0,
                color: Colors.red,
                onPressed: (){
                  playSound(1);
                },),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Colors.yellow,
                minWidth: 350.0,
                height: 50.0,
                onPressed: (){
                  playSound(2);
                },
              ),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minWidth: 300.0,
                height: 50.0,
                color: Colors.blue,
                onPressed: (){
                  playSound(3);
                },
              ),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minWidth: 250.0,
                height: 50.0,
                color: Colors.green,
                onPressed: (){
                  playSound(4);
                },
              ),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minWidth: 200.0,
                height: 50.0,
                color: Colors.pink,
                onPressed: (){
                  playSound(5);
                },
              ),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minWidth: 150.0,
                height: 50.0,
                color: Colors.purple,
                onPressed: (){
                  playSound(6);
                },
              ),
              FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minWidth: 100.0,
                height: 50.0,
                color: Colors.orange,
                onPressed: (){
                  playSound(7);
                },
              ),
              SizedBox(height: 40.0,),
              Text('Happy playing!', style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                  letterSpacing: 3.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Langar'
              ),)
            ],)

        ),
      ),
    );
  }
}
