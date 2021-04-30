import '../../main.dart';

class GeneratePageState extends GetxController {
  // Balls
  final front = <int>[].obs;
  final back = <int>[].obs;

  // Panel
  final RxDouble panelPosition = RxDouble(0);

  // Give up and regenerate a ticket
  Future refreshTicket() async {}

  // put ticket to attention list
  Future followTicket() async {}
}
