import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1580309237429-661ea7cd1d53?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "John Doe",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Flutter Mobile Application Developer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                child: InkWell(
                  onTap: (){
                    launch('https://github.com/');
                  },
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                    title: Text(
                      "GitHub",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                )),
            Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                child: InkWell(
                  onTap: (){
                    launch('https://instagram.com/');
                  },
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Instagram",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                )),
            Container(
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                child: InkWell(
                  onTap: (){
                    launch('https://www.youtube.com/channel/UCdc1kwgv_rDE5cjwZcSyWxQ');
                  },
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.white,
                    ),
                    title: Text(
                      "YouTube",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
