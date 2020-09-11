import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 90.0,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Image.asset('assets/images/menu_dots.png',
                    fit: BoxFit.cover, height: 25.0),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 10.0),
              icon: Icon(Icons.favorite, size: 30.0,),
              onPressed: () {
                // Implement navigation to shopping cart page here...
                print('Click Search');
              },
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/women_fit.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
