import 'package:authentication/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.appScaffoaldColor,
      appBar: AppBar(
        backgroundColor: AppThemes.Mediumblue,
        title: Text(
          "Chats",
          style: TextStyle(
            // fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            leading: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  backgroundColor: AppThemes.Mediumblue,
                  radius: 25,
                ),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 6,
                )
              ],
            ),
            title: Text("Person Name"),
            subtitle: Text("hi alyan what happen!!"),
            trailing: CircleAvatar(radius: 10),
          );
        },
      ),
    );
  }
}
