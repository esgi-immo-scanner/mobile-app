import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/message_page/models/message_model.dart';

class MessageController extends GetxController {
  MessageController(this.messageModelObj);

  Rx<MessageModel> messageModelObj;
}
