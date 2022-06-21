import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 28, top: 10),
        color: Colors.white,
        child: ListView(
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'User Name',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                // TODO fix the width between Text and IconButton
                SizedBox(
                  width: 200,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_alert_sharp),
                  iconSize: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
