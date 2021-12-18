import 'package:facebook_ui/widgets/blueTick.dart';
import 'package:flutter/material.dart';
class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;
  final void Function() addFriend;
  final void Function() removeSuggestion;
  final bool showBluetick;
  SuggestionCard({
    required this.avatar,
    required this.name,
    required this.mutualFriends,
    required this.addFriend,
    required this.removeSuggestion,
    this.showBluetick=false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              
              // title: Text(name != null ? name : ""),
              title: Row(
        children: [
          // ignore: unnecessary_null_comparison
          Text(name != null ? name : ""),
          SizedBox(
            width: 5,
          ),
          showBluetick ? BlueTick() : SizedBox(),
        ],
      ),
              
              subtitle: Text(
                  // ignore: unnecessary_null_comparison
                  mutualFriends != null ? mutualFriends + ' Mutual Friends' : " No Mutual Friends"),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: addFriend,
                    buttonIcon: Icons.person_add_outlined,
                    buttonColor: Colors.blue,
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: 'Add Friend',
                  ),
                  blankButton(
                      buttonAction: removeSuggestion,
                      buttonColor: Colors.grey.shade300,
                      buttonTextColor: Colors.black,
                      buttonText: 'Remove')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor,
  }) {
    // ignore: deprecated_member_use
    return FlatButton(
      onPressed: buttonAction,
      color: buttonColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor,
        ),
      ),
    );
  }

  Widget iconButton({
    required void Function() buttonAction,
    required IconData buttonIcon,
    required Color buttonColor,
    required Color buttonTextColor,
    required Color buttonIconColor,
    required String buttonText,
  }) {
    // ignore: deprecated_member_use
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
      label: Text(
        buttonText,
        style: TextStyle(color: buttonTextColor),
      ),
      color: buttonColor,
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        // ignore: unnecessary_null_comparison
        child: avatar != null
            ? Image.asset(
                avatar,
                height: 250,
                fit: BoxFit.cover,
              )
            : SizedBox(),
      ),
    );
  }
}
