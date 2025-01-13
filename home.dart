import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  final List<Message> messages = [
    Message(
      name: "Laurent",
      preview: "How about meeting tomorrow?",
      time: "20:18",
      profilePicUrl: "https://i.postimg.cc/SsQbP19J/laurent.jpg",
    ),
    Message(
      name: "Tracy",
      preview: "I love that idea, it's great!",
      time: "19:22",
      profilePicUrl: "https://i.postimg.cc/0QXPhV35/tracy.jpg",
    ),
    Message(
      name: "Claire",
      preview: "I wasn't aware of that. Let me check.",
      time: "14:34",
      profilePicUrl: "https://i.postimg.cc/3NL1Xvdc/claire.jpg",
    ),
    Message(
      name: "Joe",
      preview: "Flutter just released 1.0 officially. Should I go for it?",
      time: "11:05",
      profilePicUrl: "https://i.postimg.cc/tgK4gSkr/jeo.jpg",
    ),
    Message(
      name: "Mark",
      preview: "It totally makes sense to get some extra day off.",
      time: "09:46",
      profilePicUrl: "https://i.postimg.cc/jdPmV8nx/mark.jpg",
    ),
    Message(
      name: "Williams",
      preview: "It has been re-scheduled to next Saturday 7:30pm.",
      time: "08:15",
      profilePicUrl: "https://i.postimg.cc/SsQbP19J/laurent.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(message.profilePicUrl),
                ),
                SizedBox(width: 16),
                Expanded( // Key change: Use Expanded to fill available space
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                    children: [
                      Text(
                        message.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        message.preview,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  message.time,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Message {
  final String name;
  final String preview;
  final String time;
  final String profilePicUrl;

  Message({
    required this.name,
    required this.preview,
    required this.time,
    required this.profilePicUrl,
  });
}