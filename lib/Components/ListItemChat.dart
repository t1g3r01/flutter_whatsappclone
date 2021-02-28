import 'package:flutter/material.dart';

class ListItemChat extends StatelessWidget {
  ListItemChat(
      this.username, this.time, this.seenStatus, this.image_url, this.msg,
      {this.color = Colors.black});
  final String username;
  final String time;
  final IconData seenStatus;
  final String image_url;
  final String msg;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: image_url == ""
              ? Icon(
                  Icons.person,
                  size: 50,
                )
              : Image.network(
                  image_url,
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(username,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontFamily: "UbuntuMono",
                    fontWeight: FontWeight.w700)),
            Text(
              time,
              style: TextStyle(fontSize: 10, color: Colors.black38),
            )
          ],
        ),
        subtitle: Row(
          children: [
            Icon(
              seenStatus,
              color: color,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(msg,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontFamily: "UbuntuMono",
                ))
          ],
        ),
      ),
    );
  }
}
