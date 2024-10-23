import 'package:flutter/material.dart';
import 'package:chat_app_ui/list.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: Users.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: Users[index]["image"] != null
                              ? NetworkImage(Users[index]["image"])
                              : null,
                          child: Users[index]["image"] == null
                              ? Icon(
                                  Icons.person,
                                  size: 27,
                                )
                              : null,
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Users[index]['name']),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 1,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    ));
  }
}
