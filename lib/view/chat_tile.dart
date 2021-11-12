
import 'package:flutter/material.dart';

import '../theme.dart';

class ChatUsers extends StatelessWidget {
  final String message;
  final String userImage;
  final String messageTime;

  const ChatUsers(
      {
        required this.message,
        required this.userImage,
        required this.messageTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(userImage, height: 40.0),
          SizedBox(width: 12.0),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(message),
                SizedBox(height: 5.0),
                Text(messageTime)
              ],
            ),
          )
        ],
      ),
    );
  }
}