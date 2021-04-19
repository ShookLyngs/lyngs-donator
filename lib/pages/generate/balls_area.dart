import '../../main.dart';

class BallsArea extends StatelessWidget {
  final int length;

  BallsArea(this.length);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: _createList());
  }

  List<Widget> _createList() {
    final list = <Widget>[];
    for (var i = 0; i < length; i++) {
      list.add(Ball(
        content: '${i + 1}',
        initialValue: false,
      ));
    }
    return list;
  }
}

class Ball extends StatelessWidget {
  final double width;
  final String content;
  final RxBool active = false.obs;

  Ball({
    required bool initialValue,
    required this.content,
    this.width = 0.125,
  }) {
    active.value = initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: width,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: InkWell(
            onTap: () {
              active.value = !active.value;
            },
            borderRadius: BorderRadius.circular(30),
            child: Obx(() {
              return Ink(
                child: Center(
                  child: Text('$content',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: active.value ? Colors.white : Colors.black87,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: active.value ? Get.theme.primaryColor : Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(30),
                ),
              );
            }),
          ),
        ),
      )
    );
  }
}

