import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/sections/headerButton.dart';
import 'package:facebook_ui/sections/roomSection.dart';
import 'package:facebook_ui/sections/statusSection.dart';
import 'package:facebook_ui/sections/storySection.dart';
import 'package:facebook_ui/sections/suggestionSection.dart';
import 'package:facebook_ui/widgets/horizontalBar.dart';
import 'package:facebook_ui/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook_ui/widgets/circularButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print('Go to search screen');
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print('Go to chat screen');
              },
            )
          ],
          title: Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButton(
              buttonOne: headerButtonFun(
                buttonText: 'Live',
                buttonIcon: Icons.videocam,
                buttonAction: () {
                  print('Go Live!');
                },
                buttonColor: Colors.red,
              ),
              buttonTwo: headerButtonFun(
                buttonText: 'Photos',
                buttonIcon: Icons.photo_library,
                buttonAction: () {
                  print('Go to photos screen');
                },
                buttonColor: Colors.green,
              ),
              buttonThree: headerButtonFun(
                buttonText: 'Room',
                buttonIcon: Icons.video_call,
                buttonAction: () {
                  print('Create Room!');
                },
                buttonColor: Colors.purple,
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              avatar: mohanlal,
              name: 'Mohanlal',
              publishedTime: '5h',
              caption: 'With Chief Minister Pinarayi Vijayan',
              postImage: cm,
              showBluetick: true,
              likeCount: '10K',
              commentCount: '1K',
              shareCount: '1K',
            ),
            thickDivider,
            PostCard(
              avatar: mammukka,
              name: 'Mammootty',
              publishedTime: '30min',
              caption: '',
              postImage: birthday,
              showBluetick: true,
              likeCount: '100K',
              commentCount: '12K',
              shareCount: '5.2K',
            ),
            thickDivider,
            PostCard(
              avatar: dulquer,
              name: 'Dulquer Salman',
              publishedTime: '10min',
              caption: saluteCaption,
              postImage: salute,
              showBluetick: true,
              likeCount: '200K',
              commentCount: '13K',
              shareCount: '5.8K',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              avatar: asifali,
              name: 'Asif Ali',
              publishedTime: 'April 20',
              caption: marshmallowCaption,
              postImage: marshmallow,
              showBluetick: true,
              likeCount: '500K',
              commentCount: '20K',
              shareCount: '10K',
            ),
            thickDivider,
            PostCard(
              avatar: dude,
              name: 'Unboxing Dude',
              publishedTime: '10min',
              caption: '',
              postImage: unboxing,
              showBluetick: false,
              likeCount: '10K',
              commentCount: '2K',
              shareCount: '1K',
            ),
            thickDivider,
            PostCard(
              avatar: mallu,
              name: 'Mallu Traveller',
              publishedTime: '10min',
              caption: malluCaption,
              postImage: malluPost,
              showBluetick: true,
              likeCount: '200K',
              commentCount: '13K',
              shareCount: '5.8K',
            ),
          ],
        ),
      ),
    );
  }
}
