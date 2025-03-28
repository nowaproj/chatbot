import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class GetChatMessagesModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const GetChatMessagesModel({this.choices});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory GetChatMessagesModel.fromJson({required Map<String, dynamic> json}) {
    return GetChatMessagesModel(
        choices: json['choices']
            ?.map<ChoicesItem?>(
                (element) => ChoicesItem.fromJson(json: element))
            ?.toList());
  }

  final List<ChoicesItem?>? choices;

  @NowaGenerated({'loader': 'auto-copy-with'})
  GetChatMessagesModel copyWith({List<ChoicesItem?>? choices}) {
    return GetChatMessagesModel(choices: choices ?? this.choices);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'choices': choices?.map((element) => element!.toJson()).toList()};
  }
}

@NowaGenerated()
class ChoicesItem {
  @NowaGenerated({'loader': 'auto-constructor'})
  const ChoicesItem({this.message});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory ChoicesItem.fromJson({required Map<String, dynamic> json}) {
    return ChoicesItem(message: Message.fromJson(json: json['message'] ?? {}));
  }

  final Message? message;

  @NowaGenerated({'loader': 'auto-copy-with'})
  ChoicesItem copyWith({Message? message}) {
    return ChoicesItem(message: message ?? this.message);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'message': message?.toJson()};
  }
}

@NowaGenerated()
class Message {
  @NowaGenerated({'loader': 'auto-constructor'})
  const Message({this.content});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory Message.fromJson({required Map<String, dynamic> json}) {
    return Message(content: json['content']);
  }

  final String? content;

  @NowaGenerated({'loader': 'auto-copy-with'})
  Message copyWith({String? content}) {
    return Message(content: content ?? this.content);
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {'content': content};
  }
}
