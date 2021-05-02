import '../../../main.dart';
import './balls_area_state.dart';

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
    // * BUG: tag will change during widget rebuild
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
    var borderRadius = BorderRadius.circular(30);

    return FractionallySizedBox(
      widthFactor: width,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Obx(() {
            var backgroundColor = state.isActive(content)
              ? Theme.of(context).primaryColor
              : Theme.of(context).cardColor;
            var textColor = state.isActive(content)
              ? Theme.of(context).primaryTextTheme.button!.color
              : Theme.of(context).textTheme.bodyText2!.color;
            var borderColor = state.isActive(content)
              ? Theme.of(context).primaryColor
              : Theme.of(context).dividerColor;

            return InkWell(
              onTap: () => state.toggle(content),
              borderRadius: borderRadius,
              child: Ink(
                child: Center(
                  child: Text('$content',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: textColor,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: backgroundColor,
                  border: Border.all(color: borderColor),
                  borderRadius: borderRadius,
                ),
              ),
            );
          }),
        ),
      )
    );
  }
}

