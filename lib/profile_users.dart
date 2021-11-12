import 'package:chirpapp/theme.dart';
import 'package:chirpapp/view/chat_screen.dart';
import 'package:flutter/material.dart';

class ProfileUsers extends StatelessWidget {
  final String username;
  final String lastMessage;
  final String userImage;

  const ProfileUsers(
      {required this.username,
      required this.lastMessage,
      required this.userImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatScreen()));
        },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(userImage, width: 44.0),
          SizedBox(width: 24.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(username,
                    style: blackTextStyle.copyWith(
                        fontSize: 16.0, fontWeight: FontWeight.w600)),
                Text(lastMessage, style: greyTextStyle),
                SizedBox(height: 16.0),
              ],
            ),
          ),
          Image.asset('assets/images/btn.png', height: 65.0)
        ],
      ),
    );
  }
}
