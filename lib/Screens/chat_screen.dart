import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/dummy_chatdata.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff185a80),
        title: Center(child: Text('Chats',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 20),)),
      ),
      body: ListView.builder(
        itemCount: dummyChatData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xff185a80),
                  child: CircleAvatar(
                    radius: 23,
                    child: Center(child: Text(dummyChatData[index].sender[0],style: GoogleFonts.lexendDeca(fontSize: 30,fontWeight: FontWeight.w900,color: Color(0xff185a80)),)),
                    backgroundColor: Colors.white,
                  ),
                ),
                title: Text(dummyChatData[index].sender),
                subtitle: Text(dummyChatData[index].text),
                trailing: Text(_formatTime(dummyChatData[index].time)),
                onTap: () {// Implement navigation to the chat details screen here
                },
              ),
              Divider(thickness: 2,color: Color(0xff185A80),),
            ],
          );
        },
      ),
    );
  }

  String _formatTime(DateTime time) {
    String hour = time.hour.toString().padLeft(2, '0');
    String minute = time.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
