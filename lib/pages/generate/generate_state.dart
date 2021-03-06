import '../../main.dart';

class GeneratePageState extends GetxController {
  // Balls
  final front = <int>[].obs;
  final back = <int>[].obs;

  // Border radius for all outer wrappers
  final wrapBorderRadius = const BorderRadius.vertical(
    top: Radius.circular(24),
  );
  // Border radius for inner widgets
  final innerBorderRadius = const Radius.circular(10);

  // Panel min height
  final panelController = PanelController();
  final panelMinHeight = 240.0;

  // Panel
  // Panel position
  final RxDouble panelPosition = RxDouble(0);
  final RxBool panelOpened = false.obs;
  final RxBool panelVisible = false.obs;
  final RxBool panelRender = false.obs;
  final RxBool panelDraggable = true.obs;
  // Panel scroller controller
  ScrollController panelScrollController = ScrollController();

  // Give up and regenerate a ticket
  Future refreshTicket() async {}

  // put ticket to attention list
  Future followTicket() async {}
}
