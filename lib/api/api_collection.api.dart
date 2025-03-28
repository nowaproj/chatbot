import 'package:dio/dio.dart';
import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:chatbot/models/get_chat_messages_model.dart';

@NowaGenerated({'editor': 'api'})
class OpenAI {
  OpenAI._();

  factory OpenAI() {
    return _instance;
  }

  static final OpenAI _instance = OpenAI._();

  final Dio _dioClient = Dio(BaseOptions(
      baseUrl: 'https://api.openai.com/',
      headers: {'Authorization': '', 'Content-Type': 'application/json'}));

  @NowaGenerated({'loader': 'api_client_getter'})
  Dio get dioClient {
    return _dioClient;
  }

  Future<GetChatMessagesModel?> getChatMessages({String? message = ''}) async {
    final Response res = await dioClient.post(
      'v1/chat/completions',
      data:
          '{\n    "model": "gpt-4o",\n    "messages": [\n        {\n            "role": "developer",\n            "content": "You are a helpful and friendly assistant. Respond conversationally and provide clear, informative answers. Keep responses concise unless more detail is requested. Avoid unnecessary repetition."\n        },\n        {\n            "role": "user",\n            "content": "${message}"\n        }\n    ]\n}',
      options: Options(headers: {}),
    );
    return GetChatMessagesModel.fromJson(json: res.data!);
  }
}
