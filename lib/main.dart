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
      home: Scaffold(
        backgroundColor: Color(0xFF263547),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Portfolio',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red[800],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.6),
                      child: Text(
                        'Professional Skills',
                        style: TextStyle(
                          color: Color(0xFFFD4345),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListItem('Java', 'Spring Boot Basic'),
                    ListItem('HTML'),
                    ListItem('JavaScript & TypeScript'),
                    ListItem('Flutter','Basic'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  String title;
  String subTitle;

  ListItem(this.title, [this.subTitle]);

  @override
  Widget build(BuildContext context) {
    if (subTitle != null) {
      return ListTile(
        contentPadding: EdgeInsets.only(left: 10.0),
        title: Text(
          '${title}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          '${subTitle}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
      );
    } else {
      return ListTile(
        contentPadding: EdgeInsets.only(left: 10.0),
        title: Text(
          '${title}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      );
    }
  }
}
