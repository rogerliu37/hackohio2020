import 'package:flutter/material.dart';
import 'package:shop_app/models/Gallery.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/details_screen.dart';

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
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  //TODO Change pictures
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/images/cat.jpg'),
                      ),
                      Expanded(
                        flex: 1,
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
            ),
            BuildPost()
          ],
        ),
      ),
    );
  }
}

class BuildPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.5,
          crossAxisSpacing: 1.5,
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          children: [
            GridTile(
              footer: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text("Bag 1"),
                ),
              ),
              child: InkResponse(
                enableFeedback: true,
                child: Image.asset("assets/images/bag_1.png"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[0],
                      ),
                    )),
              ),
            ),
            GridTile(
              footer: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text("Bag 2"),
                ),
              ),
              child: InkResponse(
                enableFeedback: true,
                child: Image.asset("assets/images/bag_2.png"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[1],
                      ),
                    )),
              ),
            ),
            GridTile(
              footer: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text("Bag 3"),
                ),
              ),
              child: InkResponse(
                enableFeedback: true,
                child: Image.asset("assets/images/bag_3.png"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[2],
                      ),
                    )),
              ),
            ),
            GridTile(
              footer: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text("Bag 4"),
                ),
              ),
              child: InkResponse(
                enableFeedback: true,
                child: Image.asset("assets/images/bag_4.png"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[3],
                      ),
                    )),
              ),
            ),
            GridTile(
              footer: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text("Bag 5"),
                ),
              ),
              child: InkResponse(
                enableFeedback: true,
                child: Image.asset("assets/images/bag_5.png"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[4],
                      ),
                    )),
              ),
            ),
            GridTile(
              footer: Material(
                color: Colors.transparent,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(4)),
                ),
                clipBehavior: Clip.antiAlias,
                child: GridTileBar(
                  backgroundColor: Colors.black45,
                  title: Text("Bag 6"),
                ),
              ),
              child: InkResponse(
                enableFeedback: true,
                child: Image.asset("assets/images/bag_6.png"),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[5],
                      ),
                    )),
              ),
            ),
          ]

//        galleryList(context).map<Widget>((gallery) {
//          return galleryView(
//            gallery: gallery,
//          );
//        }).toList(),toList
          ),
    );
  }
}

/*Build Gallery Tab: This is the gallery view of the user's profile*/
class buildGallery extends StatefulWidget {
  @override
  _buildGalleryState createState() => _buildGalleryState();
}

class _buildGalleryState extends State<buildGallery> {
  /*This will be the list that contains all of the users added listings*/
  List<Gallery> galleryList(BuildContext context) {
    return [
      Gallery(assetName: "assets/images/bag_1.png", title: "Bag 1"),
      Gallery(assetName: "assets/images/bag_2.png", title: "Bag 2"),
      Gallery(assetName: "assets/images/bag_3.png", title: "Bag 3"),
      Gallery(assetName: "assets/images/bag_4.png", title: "Bag 4"),
      Gallery(assetName: "assets/images/bag_5.png", title: "Bag 5"),
      Gallery(assetName: "assets/images/bag_6.png", title: "Bag 6"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: GridView.count(
          crossAxisCount: 3,
          padding: const EdgeInsets.all(8),
          childAspectRatio: 1,
          children: [
            Container(
              child: Image(image: AssetImage("assets/images/bag_1.png")),
            )
          ]

//        galleryList(context).map<Widget>((gallery) {
//          return galleryView(
//            gallery: gallery,
//          );
//        }).toList(),toList
          ),
    );
  }
}

/*Text Box for the User's listings*/
class galleryData extends StatelessWidget {
  const galleryData(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(text),
    );
  }
}

class galleryView extends StatelessWidget {
  galleryView({Key key, @required this.gallery}) : super(key: key);
  final Gallery gallery;
  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: Colors.black45,
          title: galleryData(gallery.title),
        ),
      ),
      child: Image.asset(gallery.assetName),
    );
  }
}
