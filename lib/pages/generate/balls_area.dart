import '../../main.dart';
import 'balls_area_state.dart';

class BallsArea extends StatelessWidget {
  final int length;
  final int maxActiveLength;
  final double width;
  late final String tag;

  BallsArea({
    required this.length,
    required this.maxActiveLength,
    this.width = 0.125,
    String? tag,
    List<int> initialValue = const <int>[],
  }) {
    // If `tag` did not passed, use timestamp as tag
    this.tag = tag ?? '${(DateTime.now().millisecondsSinceEpoch)}';

    // Create state for current widget only
    Get.put(
      BallsAreaState(
        initialValue: initialValue,
        maxLength: maxActiveLength,
      ),
      tag: this.tag,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _createList());
  }

  List<Widget> _createList() {
    final list = <Widget>[];
    for (var i = 0; i < length; i++) {
      list.add(Ball(
        content: i + 1,
        width: width,
        tag: tag,
      ));
    }
    return list;
  }
}

class Ball extends StatelessWidget {
  final double width;
  final int content;
  final String tag;
  late final BallsAreaState state;

  Ball({
    required this.content,
    required this.width,
    required this.tag,
  }) {
    state = Get.find<BallsAreaState>(tag: tag);
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: width,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Obx(() {
            return InkWell(
              onTap: state.isActive(content)
                  ? () => state.toggle(content) : null,
              borderRadius: BorderRadius.circular(30),
              child: Ink(
                child: Center(
                  child: Text('$content',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: state.isActive(content)
                          ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: state.isActive(content)
                      ? Get.theme.primaryColor : Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            );
          }),
        ),
      )
    );
  }
}

