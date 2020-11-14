import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red[900],
      appBar: new AppBar(
        //TODO: Pull user name from database, toString
        title: Text(
          "Tyler Liu",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        color: Colors.grey,
        child: SafeArea(
          child: ListView(
            children: [
              Column(
                children: [
                  //TODO Change pictures
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/cat.jpg'),
                      ),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    //Rating
                                    Text("Rating: *****",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.teal[100],
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2.0)),
                                    //Location
                                    Text("Location: North",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.teal[100],
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2.0)),
                                    //Bio
                                    Container(
                                      margin: const EdgeInsets.only(top: 4.0),
                                      child: Text("Hello, Im a cat!",
                                          style: TextStyle(
                                            fontFamily: 'Source Sans Pro',
                                            fontSize: 20.0,
                                            color: Colors.teal[100],
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2.0,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              //Spacing between text
                              height: 20.0,
                              width: 150.0,
                              child: Divider(
                                color: Colors.teal.shade100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
