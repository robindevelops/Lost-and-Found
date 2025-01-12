import 'package:authentication/presentation/search/search_screen.dart';
import 'package:authentication/presentation/ui/chats/chat_screen.dart';
import 'package:authentication/presentation/ui/dashboard/modules/All-Itemes/all_Items.dart';
import 'package:authentication/presentation/ui/dashboard/widgets/clipper.dart';
import 'package:authentication/presentation/ui/notification_screen.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  TextEditingController searchcontroller = TextEditingController();
  CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomCurveClipper(),
      child: Container(
        height: 120,
        color: Colors.blue[800],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: GestureDetector(
                    onTap: () {
                      // print("object");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SearchScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              Text("Search your Products")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // child: TextField(
                  //   controller: searchcontroller,
                  //   cursorColor: Colors.black,
                  //   decoration: InputDecoration(
                  //     contentPadding: EdgeInsets.all(5),
                  //     prefixIcon: Icon(Icons.search),
                  //     hintText: "Find your item",
                  //     hintStyle: TextStyle(color: Colors.grey),
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     enabledBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(30),
                  //       borderSide: BorderSide.none,
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(30),
                  //       borderSide: BorderSide.none,
                  //     ),
                  //   ),
                  // ),
                ),
              ),
              SizedBox(width: 15),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ChatScreen();
                      },
                    ),
                  );
                },
                icon: Stack(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      size: 35,
                      color: Colors.white,
                    ),
                    CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NotificationScreen();
                      },
                    ),
                  );
                },
                icon: Icon(
                  Icons.notifications_none,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
