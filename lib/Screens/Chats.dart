import 'package:flutter/material.dart';
import 'package:whatsappclone/Components/ListItemChat.dart';
import 'package:whatsappclone/Screens/ChatScreen.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  var data = {
    'username': "Elwannas HIRI",
    'time': "Yesterday",
    'icon': Icons.check_circle,
    'image_url': "",
    'msg': "Wech A Sidi",
    'color': Colors.blue,
  };

  gotoChatScreen(data) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChatScreen(
                  id: "",
                  username: data['username'],
                  image_url: data['image_url'],
                  callOption: true,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: List.generate(
              10,
              (index) => GestureDetector(
                    onTap: () => gotoChatScreen(data),
                    child: ListItemChat(
                      data['username'],
                      data['time'],
                      data['icon'],
                      data['image_url'],
                      data['msg'],
                      color: data['color'],
                    ),
                  ))),
    );
  }
}
