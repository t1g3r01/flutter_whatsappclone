import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({this.id, this.callOption, this.image_url, this.username});
  final String id;
  final String username;
  final String image_url;
  final bool callOption;
  @override
  _ChatScreenState createState() =>
      _ChatScreenState(this.id, this.callOption, this.image_url, this.username);
}

class _ChatScreenState extends State<ChatScreen> {
  _ChatScreenState(this.id, this.callOption, this.image_url, this.username);
  final String id;
  final String username;
  final String image_url;
  final bool callOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(username,
            style: TextStyle(
                fontFamily: 'UbuntuMono', fontWeight: FontWeight.w700)),
        // leading: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(150),
        //     child: image_url == ""
        //         ? Icon(Icons.person_pin_circle)
        //         : Container(
        //             width: 40,
        //             height: 40,
        //             child: Image.network(
        //               image_url,
        //               width: 30,
        //               height: 30,
        //               fit: BoxFit.cover,
        //             ),
        //           ),
        //   ),
        // ),
        actions: [
          callOption
              ? IconButton(icon: Icon(Icons.call), onPressed: () {})
              : Container(),
          IconButton(icon: Icon(Icons.menu), onPressed: () {})
        ],
      ),
      bottomNavigationBar: ListTile(
        title: TextField(),
        trailing: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {},
        ),
      ),
    );
  }
}
