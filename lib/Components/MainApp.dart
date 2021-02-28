import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:whatsappclone/Screens/Chats.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int activeScreen = 3;
  String title = "WhatsApp";
  bool one = true;
  statusScreenActions() {
    setState(() => title = "WhatsApp");
    return [
      IconButton(
          icon: Icon(
            LineIcons.search,
            size: 25,
          ),
          onPressed: () {}),
      IconButton(
          icon: Icon(
            Icons.menu_rounded,
            size: 25,
          ),
          onPressed: () {}),
    ];
  }

  callsScreenActions() {
    setState(() => title = "Calls");

    return [
      TextButton(
        child: Text(
          "All",
          style: TextStyle(color: one ? Colors.white : Colors.black26),
        ),
        onPressed: () {
          setState(() {
            one = true;
          });
        },
      ),
      TextButton(
        child: Text(
          "Missed",
          style: TextStyle(color: !one ? Colors.white : Colors.black26),
        ),
        onPressed: () {
          setState(() {
            one = false;
          });
        },
      ),
      IconButton(
          icon: Icon(
            Icons.call_outlined,
            size: 25,
          ),
          onPressed: () {}),
    ];
  }

  cameraScreenActions() {
    setState(() => title = "Camera");
    return null;
  }

  chatsScreenActions() {
    setState(() => title = "Chats");
    return [
      IconButton(
          icon: Icon(
            Icons.message_rounded,
            size: 25,
          ),
          onPressed: () {}),
    ];
  }

  settingsScreenActions() {
    return null;
  }

  actions(int index) {
    setState(() {
      activeScreen = index;
    });
    switch (index) {
      case 0:
        setState(() {
          title = "Status";
        });
        return statusScreenActions();
        break;
      case 1:
        setState(() {
          title = "Calls";
        });
        return callsScreenActions();
        break;
      case 2:
        setState(() {
          title = "Camera";
        });
        return cameraScreenActions();
        break;
      case 3:
        setState(() {
          title = "Chats";
        });
        return chatsScreenActions();
        break;
      case 4:
        setState(() {
          title = "Settings";
        });
        return settingsScreenActions();
        break;
    }
  }

  NavBar() {
    return BottomNavigationBar(
        elevation: 10,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green[800],
        onTap: (index) => actions(index),
        currentIndex: activeScreen,
        items: [
          BottomNavigationBarItem(
              icon: Icon(LineIcons.circleNotched), label: 'Status'),
          BottomNavigationBarItem(icon: Icon(LineIcons.phone), label: 'Calls'),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.camera), label: 'Camera'),
          BottomNavigationBarItem(
              icon: Icon(LineIcons.facebookMessenger), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ]);
  }

  _body() {
    switch (activeScreen) {
      case 0:
        return Chats();
        break;
      default:
        return Chats();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.green[800],
        title: Text(
          title,
          style:
              TextStyle(fontFamily: 'UbuntuMono', fontWeight: FontWeight.w700),
        ),
        actions: actions(activeScreen),
      ),
      body: _body(),
    );
  }
}
