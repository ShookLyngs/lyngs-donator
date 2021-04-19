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
      ));
    }
    return list;
  }
}

class Ball extends StatelessWidget {
  final double width;
  final String content;

  Ball({
    required this.content,
    this.width = 0.125,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: width,
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30),
            child: Ink(
              child: Center(
                child: Text('$content',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      )
    );
  }
}

