import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(padding: EdgeInsets.only(right: 80),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 25),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 217, 215, 215),
                ),
                child: Text("Hello What can i do for you, you can bool your appointment directly",
                style: TextStyle(
                  fontSize: 16
                ),
                ),
              ),
            ),
          ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20,left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 25),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 82, 19, 161),
                ),
                child: Text(
                  "Hello Doctor, are you there",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
