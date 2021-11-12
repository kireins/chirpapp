import 'package:chirpapp/theme.dart';
import 'package:flutter/material.dart';

class LeftMsg extends StatelessWidget {
  final String message;
  final String userImage;
  final String messageTime;

  const LeftMsg(
      {
        required this.message,
        required this.userImage,
        required this.messageTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Align(
        alignment: FractionalOffset.centerRight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Spacer(),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(message),
                  SizedBox(height: 5.0),
                  Text(messageTime)
                ],
              ),
            ),
            Image.asset(userImage, height: 40.0),
            SizedBox(width: 12.0),
          ],
        ),
      ),
    );
  }
}