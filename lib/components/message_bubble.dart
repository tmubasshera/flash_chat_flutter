import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MessageBubble extends StatelessWidget {

  String sender, text;
  bool isMe; 


  MessageBubble({this.sender, this.text, this.isMe});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment:isMe? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text('$sender',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 8,
          ),),
          Material(
            elevation: 2, 
            borderRadius: BorderRadius.circular(10),
            color: isMe? Colors.lightBlueAccent: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$text',
                style: TextStyle(
                  color: isMe? Colors.white: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}