import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  List<Message> messages = [
    Message(
        text: "Yes sure",
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false),
    Message(
        text: "Yes sure",
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: true),
    Message(
        text: "Yes sure",
        date: DateTime.now().subtract(const Duration(minutes: 1)),
        isSentByMe: false)
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Expanded(child: messageBox()), typeMessageBox()],
        ),
      ),
    );
  }

  Widget messageBox() {
    return GroupedListView<Message, DateTime>(
      padding: const EdgeInsets.all(8),
      reverse: true,
      order: GroupedListOrder.DESC,
      useStickyGroupSeparators: true,
      floatingHeader: true,
      elements: messages,
      groupBy: (message) =>
          DateTime(message.date.year, message.date.month, message.date.day),
      groupHeaderBuilder: (Message message) => SizedBox(
        height: 40,
        child: Center(
          child: Card(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(DateFormat.yMMMd().format(message.date)),
            ),
          ),
        ),
      ),
      itemBuilder: (context, Message message) => Align(
        alignment:
            message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(message.text),
          ),
        ),
      ),
    );
  }

  Widget typeMessageBox() {
    return Container(
      color: Colors.grey.shade300,
      child: TextField(
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(12),
            hintText: "Type your message here..."),
        onSubmitted: (text) {
          final message =
              Message(text: text, date: DateTime.now(), isSentByMe: true);
          setState(() {
            messages.add(message);
          });
        },
      ),
    );
  }
}

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  Message({required this.text, required this.date, required this.isSentByMe});
}
