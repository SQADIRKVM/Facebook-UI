import 'package:facebook_ui/sections/headerButton.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:flutter/material.dart';

import 'horizontalBar.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedTime;
  final String caption;
  final String postImage;
  final bool showBluetick;
  final String likeCount;
  final String shareCount;
  final String commentCount;

  PostCard({
    required this.avatar,
    required this.name,
    this.publishedTime = '',
    required this.caption,
    required this.postImage,
    this.showBluetick = false,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButton(
            buttonOne: headerButtonFun(
              buttonText: 'Like',
              buttonColor: Colors.grey.shade700,
              buttonIcon: Icons.thumb_up,
              buttonAction: () {
                print('Like this post!');
              },
            ),
            buttonTwo: headerButtonFun(
              buttonText: 'Comments',
              buttonIcon: Icons.message_outlined,
              buttonAction: () {
                print('Add Comments on this post');
              },
              buttonColor: Colors.grey.shade700,
            ),
            buttonThree: headerButtonFun(
              buttonText: 'Share',
              buttonIcon: Icons.share_outlined,
              buttonAction: () {
                print('Share this post!');
              },
              buttonColor: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      // ignore: unnecessary_null_comparison
      label == null ? " " : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 5),
                displayText(label: likeCount),
                SizedBox(width: 10),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5),
                displayText(label: 'Comments'),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: 'Shares'),
                SizedBox(width: 10),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print('Dropdown Pressed');
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.all(5),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection() {
    // ignore: unnecessary_null_comparison
    return caption != null && caption != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
            child: Text(
              // ignore: unnecessary_null_comparison
              caption == null ? "" : caption,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          showBluetick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          // ignore: unnecessary_null_comparison
          Text(publishedTime == null ? " " : publishedTime),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print('Open Menu items');
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
