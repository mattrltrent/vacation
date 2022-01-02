import 'package:flutter/material.dart';

class SocialTile extends StatelessWidget {

  final String text;
  final IconData icon;

  SocialTile({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(icon, size: 40, color: Colors.lightBlue,),
          Text(text, style: TextStyle(fontFamily: 'Ub', fontSize: 15, color: Colors.grey),),
        ],
      ),
    );
  }
}

