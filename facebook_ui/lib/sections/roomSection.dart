import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          createRoomButton(),
          Avatar(
            displayImage: dulquer,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mammukka,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mohanlal,
            displayStatus: true,
          ),
          Avatar(
            displayImage: asifali,
            displayStatus: true,
          ),
          Avatar(
            displayImage: dude,
            displayStatus: true,
          ),
          Avatar(
            displayImage: mallu,
            displayStatus: true,
          ),
          Avatar(
            displayImage: ebulljet,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget createRoomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child:
          // ignore: deprecated_member_use
          OutlineButton.icon(
        shape: StadiumBorder(),
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          'Create \n Room',
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
        onPressed: () {
          print('Create a chat room!');
        },
        borderSide: BorderSide(
          color: Colors.blue.shade100,
        ),
      ),
    );
  }
}
