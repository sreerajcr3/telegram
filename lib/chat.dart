import 'package:flutter/material.dart';
import 'package:telegram/message.dart';
import 'package:telegram/user.dart';

class Chatpage extends StatelessWidget {
  final User user;
  const Chatpage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    ImageProvider profilepic = NetworkImage(user.image);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: profilepic,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Text(user.name),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.tealAccent, Colors.white10])),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: profilepic,
                  ),
                  const SizedBox(width: 20),
                  Container(
                    alignment: Alignment.center,
                    width: 140,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(50)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(9.0),
                          child: chat(
                              message: 'how is your day ?',
                              isSender: true),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text('it is going good'),
                    ),
                  )
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.emoji_emotions),
                  suffixIcon: Icon(Icons.arrow_circle_right),
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'message',
                  hintStyle: TextStyle(fontSize: 18),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
