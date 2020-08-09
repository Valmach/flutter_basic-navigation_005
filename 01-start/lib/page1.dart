import 'package:flutter/material.dart';
import 'package:overflown/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var navigationResult = await Navigator.push(
              context, new MaterialPageRoute(builder: (context) => Page2()));

          if (navigationResult == true) {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('Navigation reslult scuccess'),
                    ));
          }
        },
      ),
      body: Container(
        child: Center(
          child: Text(
            'Page 1',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
