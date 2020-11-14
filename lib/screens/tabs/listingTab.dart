import 'package:flutter/material.dart';

class ListingTab extends StatefulWidget {
  @override
  _ListingTabState createState() => _ListingTabState();
}

class _ListingTabState extends State<ListingTab> {
  final _formKey = GlobalKey<FormState>();
  List<String> promptText = List<String>();

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    promptText.add('Create New Listing: ');
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                  child: Text(
                    promptText[0],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          SizedBox(height: 10.0),
          Flexible(
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: TextFormField(
                controller: _textController,
                style: TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.sort_by_alpha),
                  hintText: 'Name of Product',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
                    Flexible(
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.description),
                  hintText: 'Description',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Upload your image here:",
//            style: TextStyle(
//              fontStyle:
//            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            child: RaisedButton(
              onPressed: () {

              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
  }

