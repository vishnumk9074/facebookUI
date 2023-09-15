import 'package:facebook/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:facebook/widget/suggetioncard.dart';
class SuggetionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
              onPressed: (){
                print("More Clicked!");
              },
              icon: Icon(Icons.more_horiz,
              color:Colors.grey[700]),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection:Axis.horizontal,
              children: [
                SuggetionCard(
                  name: "Vishnu Mk",
                  avatar: gainer,
                  mutualFriends: "3 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: (){
                    print("Remove this person");
                  },
                ),
                SuggetionCard(
                  name: "Kaztro",
                  avatar: kaztro,
                  mutualFriends: "2 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: (){
                    print("Remove this person");
                  },
                ),
                SuggetionCard(
                  name: "Fishing Freaks",
                  avatar: ff,
                  mutualFriends: "3 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: (){
                    print("Remove this person");
                  },
                ),
                SuggetionCard(
                  name: "Jonathan Gaming",
                  avatar: jnt,
                  mutualFriends: "3 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship");
                  },
                  removeFriend: (){
                    print("Remove this person");
                  },
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
