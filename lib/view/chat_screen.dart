import 'package:chirpapp/view/message_screen.dart';
import 'package:flutter/material.dart';
import '../profile_users.dart';
import '../theme.dart';
import 'chat_tile.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20.0))),
                  child: ProfileUsers(
                    username: 'Jakarta Fair',
                    lastMessage: 'I saw it clearly and mig...',
                    userImage: 'assets/images/icon_jf.png',
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      LeftMsg(
                          message: 'How are ya guys?',
                          userImage: 'assets/images/pic_sabrina.png',
                          messageTime: '2:30'),
                      ChatUsers(
                          message: 'Find here :P',
                          userImage: 'assets/images/pic_gab.png',
                          messageTime: '3:11'),
                      ChatUsers(
                          message:
                          'Thinking about how to deal \nwith this client from hell...',
                          userImage: 'assets/images/pic_josh.png',
                          messageTime: '22:08'),
                      ChatUsers(
                          message: 'Love them',
                          userImage: 'assets/images/pic_angel.png',
                          messageTime: '23:11'),
                    ],
                  ),
                ),

                SizedBox(height: 50.0),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Type message ...', style: greyTextStyle.copyWith(fontSize: 16.0)),
                      Image.asset('assets/images/btn_send.png', height: 35.0)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
