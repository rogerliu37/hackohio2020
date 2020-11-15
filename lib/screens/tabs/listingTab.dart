import 'package:flutter/material.dart';

class ListingTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
    title: Text(
    "Create New Listing",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.blue[900],
    ),
      body: ListingTab(),
    );
  }
}


class ListingTab extends StatefulWidget {
  @override
  _ListingTabState createState() => _ListingTabState();
}

class _ListingTabState extends State<ListingTab> {
  final _formKey = GlobalKey<FormState>();
  List<String> promptText = List<String>();
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    final _textController = TextEditingController();
    DateTime _dateTime;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          SizedBox(height: 20.0),
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
          Flexible(
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: TextFormField(
                style: TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  icon: Icon(Icons.attach_money),
                  hintText: 'Price',
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Cost per day?';
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
            "When would you like your product returned by?",
//            style: TextStyle(
//              fontStyle:
//            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('Pick a date'),
                onPressed: () {
                  showDatePicker(
                      context: context,
                      initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                      firstDate: DateTime(2001),
                      lastDate: DateTime(2021)
                  ).then((date) {
                    setState(() {
                      _dateTime = date;
                    });
                  });
                },
              )
            ],
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

//Future navigateToPageList2(context) async {
//  Navigator.push(
//    context,
//    MaterialPageRoute(
//      builder: (context) => listingTabSuccess(),
//    ),
//  );
//}

