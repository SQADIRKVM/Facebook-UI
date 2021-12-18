import 'package:facebook_ui/assets.dart';
import 'package:facebook_ui/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text('People You May Know'),
            trailing: IconButton(
              onPressed: () {
                print('Open More options');
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: sqadir,
                  mutualFriends: '5',
                  name: 'S.Qadir',
                  addFriend: () {
                    print('Add to friendslist');
                  },
                  removeSuggestion: () {
                    print('Remove from suggestionlist');
                  },
                  showBluetick: true,
                ),
                SuggestionCard(
                  avatar: nikhil,
                  mutualFriends: 'No',
                  name: 'Nikhil Kilivayil',
                  addFriend: () {
                    print('Add to friendslist');
                  },
                  removeSuggestion: () {
                    print('Remove from suggestionlist');
                  },
                  showBluetick: false,
                ), 
              ],
            ),
          )
        ],
      ),
    );
  }
}
