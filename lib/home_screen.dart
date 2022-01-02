import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'CW_social_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.location_on, color: Colors.grey), onPressed: () {}),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.lightBlue, width: 2),
                  ),
                  child: Padding(
                    child: Image.asset('images/person.png'),
                    padding: EdgeInsets.all(2),
                  ),
                ),
                IconButton(icon: Icon(Icons.menu, color: Colors.grey), onPressed: () {}),
              ],
            ),
            Text(
              'Matthew Trent',
              style: TextStyle(fontFamily: 'Ub', fontSize: 30),
            ),
            Text(
              '~ Cool Title ~',
              style: TextStyle(fontFamily: 'Ub', fontSize: 15, color: Colors.grey),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.black38,
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    SocialTile(icon: Icons.phone, text: '123456789'),
                    SocialTile(icon: Icons.email, text: 'matt@email.com'),
                    SocialTile(icon: FontAwesomeIcons.instagram, text: '@Matt'),
                    SocialTile(icon: FontAwesomeIcons.stackOverflow, text: 'Matt'),
                    SocialTile(icon: FontAwesomeIcons.snapchat, text: 'Matthew'),
                    SocialTile(icon: FontAwesomeIcons.facebook, text: 'Matthew Trent'),
                    SocialTile(icon: FontAwesomeIcons.twitter, text: '@matt'),
                    SocialTile(icon: FontAwesomeIcons.googlePlay, text: 'matt dev'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
