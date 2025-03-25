import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class MessageModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const MessageModel({this.msg = '', this.time = '', this.isMe = true});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory MessageModel.fromJson({required Map<String, dynamic> json}) {
    return MessageModel(
      msg: json['msg'] ?? '',
      time: json['time'] ?? '',
      isMe: json['isMe'] ?? true,
    );
  }

  final String? msg;

  final String? time;

  final bool? isMe;

  @NowaGenerated({'loader': 'auto-copy-with'})
  MessageModel copyWith({String? msg, String? time, bool? isMe}) {
    return MessageModel(
      msg: msg ?? this.msg,
      time: time ?? this.time,
      isMe: isMe ?? this.isMe,
    );
  }

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'msg': msg,
      'time': time,
      'isMe': isMe,
    };
  }
}
