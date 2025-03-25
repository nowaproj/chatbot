import 'package:flutter/material.dart';
import 'package:chatbot/chat_template/message_model.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:chatbot/chat_template/chat_bubble.dart';

@NowaGenerated({'auto-width': 393, 'auto-height': 808})
class ChatPage extends StatefulWidget {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() {
    return _ChatPageState();
  }
}

@NowaGenerated()
class _ChatPageState extends State<ChatPage> {
  List<MessageModel?>? fullChat = [
    const MessageModel(
      msg: 'Hi How are you ? ',
      isMe: false,
      time: '10:00',
    ),
    const MessageModel(msg: 'Good What about You ', time: '10:07')
  ];

  TextEditingController text = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffc4c4c4),
        borderRadius: BorderRadius.circular(0.0),
        image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://static.vecteezy.com/system/resources/thumbnails/015/766/294/small/blurred-dark-purple-abstract-background-free-vector.jpg')),
      ),
      child: Scaffold(
        body: SafeArea(
          child: NFlex(
            direction: Axis.vertical,
            spacing: 0.0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlexSizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  child: NFlex(
                    direction: Axis.horizontal,
                    spacing: 0.0,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FlexSizedBox(
                        width: null,
                        height: null,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0x1ac4c4c4),
                            borderRadius: BorderRadius.circular(14.0),
                            border: Border.all(
                                color: const Color(0x21ffffff), width: 1.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              left: 10.0,
                              right: 10.0,
                              top: 6.0,
                              bottom: 6.0,
                            ),
                            child: Text(
                              'Ask me anything! ✨',
                              style: TextStyle(
                                color: Color(0xe0ffffff),
                                fontFamily: 'Figtree',
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              FlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0x00160b1c),
                      borderRadius: BorderRadius.circular(0.0)),
                  child: ListView.separated(
                    itemCount: fullChat!.length,
                    itemBuilder: (context, index) {
                      final MessageModel? element =
                          fullChat?[fullChat!.length - index - 1];
                      return ChatBubble(
                        message: element,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 8.0,
                      width: 20.0,
                    ),
                    padding: const EdgeInsets.only(
                      left: 16.0,
                      right: 16.0,
                      top: 16.0,
                      bottom: 16.0,
                    ),
                    reverse: true,
                  ),
                ),
              ),
              FlexSizedBox(
                width: double.infinity,
                height: 72.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0x00160b1c),
                      borderRadius: BorderRadius.circular(0.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    child: NFlex(
                      direction: Axis.horizontal,
                      spacing: 10.0,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlexSizedBox(
                          width: null,
                          flex: 1,
                          child: TextFormField(
                            controller: text,
                            decoration: InputDecoration(
                              labelText: null,
                              hintText: 'type something...',
                              filled: true,
                              fillColor: const Color(0x13ffffff),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(360.0),
                                  borderSide: const BorderSide(
                                      width: 1.0, color: Color(0xffffb034))),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(360.0),
                                  borderSide: const BorderSide(
                                      color: Color(0x3effffff))),
                              hintStyle:
                                  const TextStyle(color: Color(0xffb0b0b0)),
                            ),
                            style: const TextStyle(
                                color: Color(0xffffffff),
                                fontFamily: 'Figtree'),
                            onEditingComplete: () {
                              send();
                            },
                            cursorColor: const Color(0xffffb034),
                            showCursor: true,
                          ),
                        ),
                        FlexSizedBox(
                          width: 46.0,
                          height: 46.0,
                          child: IconButton(
                            onPressed: () {
                              send();
                            },
                            icon: const Icon(
                              IconData(
                                58737,
                                fontFamily: 'MaterialIcons',
                                matchTextDirection: true,
                              ),
                              color: Color(0xffffffff),
                              fill: null,
                            ),
                            color: null,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: const Color(0x00f5f5f5),
        appBar: AppBar(
          title: const SizedBox(
            width: 40.0,
            height: 40.0,
            child: Image(
              image: AssetImage('assets/chat 20-03-2025.png'),
              fit: BoxFit.contain,
            ),
          ),
          backgroundColor: const Color(0x00ffffff),
          foregroundColor: const Color(0xffffffff),
        ),
      ),
    );
  }

  void send() {
    fullChat
        ?.add(MessageModel(msg: text.text, time: DateTime.now().format('jm')));
    text.clear();
    setState(() {});
  }
}
