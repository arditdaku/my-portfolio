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
            'My portfolio',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.red[800],
        ),
        body: Container(
          child: SafeArea(
            child: Container(
              child: ListView(
                children: [
                  //Profile Picture
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('images/mypic.jpg'),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Ardit Daku',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Anton',
                      ),
                    ),
                  ),
                  HeadingText('Software Developer'),
                  Container(
                    width: double.infinity,
                    color: Colors.white38,
                    height: 2.0,
                    margin: EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 10.0, bottom: 30.0),
                  ),
                  //Professional Skills
                  HeadingText('Professional Skills'),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    height: 2.0,
                    margin: EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                  ),
                  ListItem('Java', 'Spring Boot Basic'),
                  ListItem('HTML'),
                  ListItem('JavaScript & TypeScript'),
                  ListItem('Flutter', 'Basic'),
                  ListItem('SQL', 'PostgreSQL, MS SQL, MySQL'),
                  ListItem('git'),

                  //Personal Skills

                  HeadingText('Personal Skills'),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    height: 2.0,
                    margin: EdgeInsets.only(
                        left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
                  ),
                  ListItem('Creative Spirit'),
                  ListItem('Reliable and professional'),
                  ListItem('Organized'),
                  ListItem('Time Management'),
                  ListItem('Team Player'),
                  ListItem('Fast learner'),
                  ListItem('Motivated'),
                  // Education

                ],
              ),
            ),
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

class HeadingText extends StatelessWidget {
  String textHeading;

  HeadingText(this.textHeading);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.6),
      child: Text(
        '${this.textHeading}',
        style: TextStyle(
          color: Color(0xFFFD4345),
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
