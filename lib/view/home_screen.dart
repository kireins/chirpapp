import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import '../users.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Column(
                          children: [
                            Image.asset('assets/images/pic_sabrina.png',
                                height: 100, width: 100),
                            SizedBox(height: 20.0),
                            Text('Sabrina Carpenter',
                                style: whiteTextStyle.copyWith(
                                    fontSize: 16.0, fontWeight: FontWeight.w500)),
                            SizedBox(height: 2.0),
                            Text(
                              'Freelancer',
                              style: greyTextStyle.copyWith(
                                  fontSize: 16.0, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 220.0),
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 40.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(30.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Friends',
                        style: blackTextStyle.copyWith(fontSize: 16.0)),
                    SizedBox(height: 16.0),
                    Users(
                        username: 'Joshuer',
                        lastMessage: 'Sorry, you’re not my ty...',
                        userImage: 'assets/images/pic_josh.png',
                        messageTime: 'Now'),
                    Users(
                        username: 'Gabriella',
                        lastMessage: 'I saw it clearly and mig...',
                        userImage: 'assets/images/pic_gab.png',
                        messageTime: '2:30'),
                    SizedBox(height: 30.0),
                    Text('Groups',
                        style: blackTextStyle.copyWith(fontSize: 16.0)),
                    Users(
                        username: 'Jakarta Fair',
                        lastMessage: 'I saw it clearly and mig...',
                        userImage: 'assets/images/icon_jf.png',
                        messageTime: '11:11'),
                    Users(
                        username: 'Angga',
                        lastMessage: 'Here here we can go...',
                        userImage: 'assets/images/icon_angga.png',
                        messageTime: '2:7:11'),
                    Users(
                        username: 'Bentley',
                        lastMessage: 'The car which does not...',
                        userImage: 'assets/images/icon_bentley.png',
                        messageTime: '7:11'),
                    SizedBox(height: 20.0),
                    FloatingActionButton(
                      elevation: 2.0,
                      backgroundColor: Color(0xFF29CB9E),
                      child: Icon(Icons.add),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
