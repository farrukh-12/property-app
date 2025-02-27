class ChatMessage {
  final String sender;
  final String text;
  final DateTime time;

  ChatMessage({required this.sender, required this.text, required this.time});
}

List<ChatMessage> dummyChatData = [
  ChatMessage(
    sender: "John",
    text: "Hey, how's it going?",
    time: DateTime.now().subtract(Duration(minutes: 10)),
  ),
  ChatMessage(
    sender: "Alice",
    text: "Hi there! I'm doing well, thanks!",
    time: DateTime.now().subtract(Duration(minutes: 8)),
  ),
  ChatMessage(
    sender: "Bob",
    text: "Hey! Do you have any plans for the weekend?",
    time: DateTime.now().subtract(Duration(minutes: 5)),
  ),
  ChatMessage(
    sender: "Emily",
    text: "Not yet, I'm still thinking about it. Any suggestions?",
    time: DateTime.now().subtract(Duration(minutes: 2)),
  ),
];
