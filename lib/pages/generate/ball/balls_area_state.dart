import '../../../main.dart';

class BallsAreaState extends GetxController {
  final items = <BallData>[].obs;
  final actives = <int>{}.obs;
  final int maxLength;

  BallsAreaState({
    required List<int> initialValue,
    required this.maxLength,
  }) {
    replace(initialValue);
  }

  bool isActive(int value) {
    return actives.contains(value);
  }
  bool isFull() {
    return actives.length == maxLength;
  }
  void add(int value) {
    if (actives.length < maxLength) {
      actives.add(value);
    }
  }
  void remove(int value) {
    actives.remove(value);
  }
  void toggle(int value) {
    print('toggle value, $value');
    if (isActive(value)) {
      remove(value);
    } else {
      add(value);
    }
  }
  void replace(List<int> values) {
    actives.clear();
    actives.addAll(values.toSet());
  }
}

class BallData {
  final int label;
  final bool active;

  BallData({
    required this.label,
    required this.active,
  });
}