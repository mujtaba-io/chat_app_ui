import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat_app_ui/chat_page.dart';

class ChatList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  int _selected_tab_index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Chat List'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
        showSelectedLabels: false, // hide labels
        showUnselectedLabels: false, // hide labels
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.flame,
              size: 28,
            ),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.camera,
              size: 28,
            ),
            label: "Camera",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.settings,
              size: 28,
            ),
            label: "Settings",
          ),
        ],
      ),
      floatingActionButton: floatingActionButton(context),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // can use list-builder, but keep it for now
              chirp('Mujtaba',
                  'Yes I told you Ill do it.. but you refused to make it'),
              chirp(
                  'Wahaj Ahmad', 'That shit\'s cool bro. Ipsum dolor sit amet'),
              chirp('Ahmad',
                  'Yes I told you Ill do it.. but you refused to make it'),
              chirp('Hasaan', 'ipsum dolor sit amet'),
              chirp('Yemeni', 'Naaaaaha'),
              chirp(
                  'Papa ki Pari', 'ipsum dolor sit amet ipsum dolor sit amet'),
              chirp('Zaid talal', 'Yes I told you to make it'),
              chirp('Kashif Yemeni', 'Lorem ipsum dolor sit amet'),
              chirp('Ayesha', 'hui hui hui'),
              chirp('talal', 'Thanks bro'),
            ],
          ),
        ),
      ),
    );
  }

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

  Widget chirp(String name, String description) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(width: 0.06, color: Colors.grey.shade700),
        ),
      ),
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                // circle avatar
                CircleAvatar(
                  radius: 28,
                  backgroundImage: Image.network(
                          'https://www.w3schools.com/w3images/avatar5.png')
                      .image,
                ),

                const SizedBox(width: 16),

                // title and info
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 6),
                        Text(
                          description,
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // button
          IconButton(
            icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            },
          ),
        ],
      ),
    );
  }

// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
// . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

  Widget floatingActionButton(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.black,
        tooltip: 'Edit Contacts',
        child: Icon(
          Icons.create_outlined,
          color: Colors.white,
        ),
        onPressed: () {});
  }
}
