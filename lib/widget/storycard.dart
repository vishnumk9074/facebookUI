import 'package:flutter/material.dart';
import 'package:facebook/asset.dart';
import 'package:facebook/widget/appbarbutton.dart';
import 'package:facebook/widget/avatar.dart';
class StoryCard extends StatelessWidget {
  final String labelText;
  final String Story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;
  StoryCard(
  {
    required this.labelText,
    required this.Story,
    required this.avatar,
    this.createStoryStatus=false,
    this.displayBorder=false,
  }
           );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5,bottom: 10,top: 10,),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        children: [
         Positioned(
           left: 5,
             top: 5,
             child:createStoryStatus ? CircularButton(
               buttonIcon: Icons.add,
               iconColor: Colors.blue,
               buttonAction:(){
                 print("Create new Story");
               } ,
             ):Avatar(
             displayImage: avatar,
               displayStatus: false,
               displayBorder: displayBorder,
               width: 35,
               height: 35,
             ),
         ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
            labelText != null ? labelText :"",
              style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
          )
        ],
      ),
    );
  }
}
