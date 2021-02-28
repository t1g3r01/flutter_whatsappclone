import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:whatsappclone/Components/MainApp.dart';

void main() => runApp(MaterialApp(
      title: 'whats-app-clone',
      home: SplashScreen(),
    ));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) =>
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MainApp()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[700],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: LineIcon.weibo(
                color: Colors.white,
                size: 50,
              ),
            ),
            Center(
              child: Text(
                "Whatsapp",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 36),
              ),
            ),
          ],
        ));
  }
}
