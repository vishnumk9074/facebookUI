import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/asset.dart';
import 'package:facebook/widget/avatar.dart';
class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: dulquer,
        displayStatus: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "what's on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder:InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
