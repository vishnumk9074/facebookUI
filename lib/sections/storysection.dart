import 'package:facebook/asset.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widget/storycard.dart';
class StorySection extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add To Story",
            avatar: dulquer,
            Story: dulquer,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Vijay",
            avatar: thalapthy,
            Story: vjpost,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Surya",
            avatar: surya,
            Story: srypost,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Aiswarya rai",
            avatar: vishnu,
            Story: aishu,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Prithwi Raj",
            avatar: prithwi,
            Story: prpost,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Mohan Lal",
            avatar: mohanlal,
            Story: mhlpost,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
