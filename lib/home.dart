import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:telegram/chat.dart';
import 'package:telegram/login_page%20.dart';
import 'package:telegram/user.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 30),
          iconSize: 30,
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: const Text('Telegram'),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title:const Text('Alert'),
                        content:const  Text('Are you sure,you want to log out?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                signout(context);
                              },
                              child: const Text('yes')),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('cancel'),
                          )
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: ((ctx, index) {
                return ListTile(
                  title: Text(users[index].name),
                  subtitle: const Text('message'),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(users[index].image),
                  ),
                  trailing: Text(users[index].time),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => Chatpage(
                              user: users[index],
                            )));
                  },
                );
              }),
              separatorBuilder: (ctx, index) {
                return const Divider();
              },
              itemCount: users.length)),
    );
  }

   signout(BuildContext ctx) async {
    final sharedprefs = await SharedPreferences.getInstance();
    await sharedprefs.clear();
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => const Login()), (route) => false);
  }
  
}
