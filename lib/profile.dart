import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 60, bottom: 10),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xFF503E9D), width: 2),
                        ),
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('images/asnan.png'))),
                        ),
                      ),
                      Text('Asnan Asrawi',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('asnanasrawi23@gmail.com')
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 24),
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.04),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 20, 24, 10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("images/account_circle.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 20, 24, 10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("images/account_balance.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My Wallet",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 20, 24, 10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("images/translate.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Change Language",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 35,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24, 20, 24, 10),
              child: Row(
                children: <Widget>[
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset("images/help.png")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Account Status",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
