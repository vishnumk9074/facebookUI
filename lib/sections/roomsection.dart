import 'package:facebook/asset.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          CreateRoomButton(),
          Avatar(displayImage: dulquer,displayStatus: true,),
          Avatar(displayImage: thalapthy,displayStatus: true,),
          Avatar(displayImage: surya,displayStatus: true,),
          Avatar(displayImage: prithwi,displayStatus: true,),
          Avatar(displayImage: vishnu,displayStatus: true,),
          Avatar(displayImage: mohanlal,displayStatus: true,),
        ],
      ),
    );
  }
}
Widget CreateRoomButton()
{
  return Container(
    padding: EdgeInsets.only(left: 5,right: 5),
    child: OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),

        side: BorderSide(width: 1, color: Colors.blue),
      ),
      icon: Icon(
        Icons.video_call_rounded,
        color: Colors.purple,
      ),
      label: Text(
        "Create \n Room",
        style: TextStyle(color: Colors.blue),
      ),
      onPressed: () {
        print("create a chat room");
      },
    ),
  );

}

