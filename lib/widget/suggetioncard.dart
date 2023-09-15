import 'package:flutter/material.dart';
import '../asset.dart';
class SuggetionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeFriend;
  SuggetionCard({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeFriend,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10,right: 10),
      child: Stack(
        children: [
          SuggetionImage(),
          SuggetionDetails(),
        ],
      ),
    );
  }
  Widget SuggetionDetails()
  {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration:BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(name !=null ? name:""),
              subtitle: Text(mutualFriends !=null ? mutualFriends:""),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                      buttonAction: addFriend,
                      buttonIcon: Icons.add_moderator,
                      buttonColor: Colors.blue,
                      buttonTextColor: Colors.white,
                      buttonIconColor: Colors.white,
                      buttonText: "Add Friend",
                      ),
                      blankButton(
                          buttonAction: removeFriend,
                           buttonText: "Remove",
                           buttonColor: Colors.grey,
                           buttonTextColor: Colors.black),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget blankButton
  ({
  required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  })
  {
    return FlatButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
            color: buttonTextColor
        ),
      ),
    );
  }
  Widget iconButton({
  required void Function()buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  })
  {
    return FlatButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      label: Text(
        buttonText,
        style: TextStyle(
            color: buttonTextColor
        ),
      ),
     color: buttonColor,
     onPressed:buttonAction,
    );
  }
  Widget SuggetionImage()
  {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child:ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: avatar !=null ?Image.asset(
            avatar,
            height: 250,
            fit: BoxFit.cover,):SizedBox(),
        ),
    );
  }
}
