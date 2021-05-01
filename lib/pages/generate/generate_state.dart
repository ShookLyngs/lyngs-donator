import '../../main.dart';

class GeneratePageState extends GetxController {
  // Balls
  final front = <int>[].obs;
  final back = <int>[].obs;

  // Border radius for all outer wrappers
  final wrapBorderRadius = const BorderRadius.vertical(
    top: Radius.circular(30),
  );

  // Panel min height
  final panelMinHeight = 170.0;

  // Panel
  final RxDouble panelPosition = RxDouble(0);

  // Give up and regenerate a ticket
  Future refreshTicket() async {}

  // put ticket to attention list
  Future followTicket() async {}
}
