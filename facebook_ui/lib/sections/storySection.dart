import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add To Story',
            avatar: dulquer,
            story: dulquer,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: 'Mammootty',
            avatar: mammukka,
            story: birthday,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Mohanlal',
            avatar: mohanlal,
            story: cm,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Asifali',
            avatar: asifali,
            story: marshmallow,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Unboxing Dude',
            avatar: dude,
            story: unboxing,
            displayBorder: true,
          ),
          StoryCard(
            labelText: 'Mallu Traveller',
            avatar: mallu,
            story: malluPost,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
