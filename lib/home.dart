import 'package:facebook/sections/headerSection.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/widget/appbarbutton.dart';
import 'package:facebook/widget/headerbutton.dart';
import 'package:facebook/widget/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/statussection.dart';
import 'package:facebook/sections/roomsection.dart';
import 'package:facebook/widget/postCard.dart';
import 'asset.dart';
import 'package:facebook/sections/suggetionSection.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider= Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider= Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('facebook',style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: (){
                print('go to search');
              },
            ),
            CircularButton(
          buttonIcon: Icons.chat,
          buttonAction: (){
            print('messenger');
          },
        )
          ]
        ),
        body: ListView(
          children: [
           StatusSection(),
           thinDivider,
            HeaderButtonSection(
             buttonOne: headerButton(
               buttonAction: (){
                 print("Go Live");
               },
               buttonColor: Colors.red,
               buttonIcon: Icons.video_call,
               buttonText: "Live",
             ),
              buttonTwo: headerButton(
                buttonAction: (){
                  print("Take photo!!");
                },
                buttonColor: Colors.green,
                buttonIcon: Icons.photo_library,
                buttonText: "Photo",
              ),
              buttonThree: headerButton(
                buttonAction: (){
                  print("Create Room!!");
                },
                buttonColor: Colors.purple,
                buttonIcon: Icons.video_call,
                buttonText: "Room",
              ),
            ),
           thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            postCard(
              name: "Vijay",
              avatar:thalapthy,
              publishedAt:"5h" ,
              postTitle: "Happy Diwali!!",
              postImage: vjpost,
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "1K",
              commentCount: "1K",
            ),
            thickDivider,
            postCard(
              name: "Prithwi Raj",
              avatar:prithwi,
              publishedAt:"1 day ago" ,
              postTitle: "",
              postImage: prpr,
              showBlueTick: true,
              likeCount: "6K",
              shareCount: "2K",
              commentCount: "1K",
            ),
            postCard(
              name: "Dulquer Salman",
              avatar:dulquer,
              publishedAt:"1 day ago" ,
              postTitle: one91,
              postImage: dqpost,
              showBlueTick: true,
              likeCount: "12K",
              shareCount: "1K",
              commentCount: "1K",
            ),
            thickDivider,
            SuggetionSection(),
             thickDivider,
            postCard(
              name: "Surya",
              avatar:surya,
              publishedAt:"5 day ago" ,
              postTitle: "Vadivasal Poster",
              postImage: surypst,
              showBlueTick: true,
              likeCount: "6K",
              shareCount: "2K",
              commentCount: "1K",
            ),
            postCard(
              name: "Aiswary Rai",
              avatar:vishnu,
              publishedAt:"Nov 5" ,
              postTitle: "",
              postImage: aishu,
              showBlueTick: true,
              likeCount: "5K",
              shareCount: "2K",
              commentCount: "1K",
            ),
            postCard(
              name: "Mohan LAl",
              avatar:mohanlal,
              publishedAt:"Dec 12" ,
              postTitle: "Shooting Time",
              postImage: mhlpost,
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "5K",
              commentCount: "1K",
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
