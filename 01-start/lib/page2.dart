import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, true);
              }),
          title: Text('Page 2'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        body: Container(
          child: Center(
            child: Text('Page 2',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          ),
        ),
      ),
    );
  }
}
