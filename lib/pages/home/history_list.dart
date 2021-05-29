import '../../main.dart';
import 'list_section.dart';
import 'radius_card.dart';

class HistoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListSection(
      title: '开奖记录',
      children: [
        HistoryListItem(
          title: '#21048',
          amount: -8,
          balls: [
            [1, 6, 12, 22, 26],
            [3, 12],
          ],
        ),
      ],
    );
  }
}

class HistoryListItem extends StatelessWidget {
  final String title;
  final double amount;
  final List<List<int>> balls;

  HistoryListItem({
    required this.title,
    required this.balls,
    this.amount = 0,
  });

  @override
  Widget build(BuildContext context) {
    var statusColor = amount > 0 ? Colors.green[500] : Colors.red[500];

    return RadiusCard(
      onTap: () {},
      innerPadding: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Text(
                  '#21049',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  '$amount',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: statusColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 30,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: balls.length,
              itemBuilder: (_, index) {
                print(index);
                return Row(children: List.generate(
                  balls[index].length,
                  (ballGroupIndex) => NumberBall(
                    text: '${balls[index][ballGroupIndex]}',
                  ),
                ));
              },
              separatorBuilder: (_, index) => Padding(
                padding: const EdgeInsets.only(left: 6, right: 12),
                child: Center(child: Text('+',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                    fontSize: 20,
                  ),
                )),
              ),
            )
          ),
        ],
      ),
    );
  }
}

class NumberBall extends StatelessWidget {
  final String text;
  final double size;

  NumberBall({
    required this.text,
    this.size = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: Ink(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(size)),
        ),
        child: Center(child: Text(
          formatTextLength(text),
          style: Theme.of(context).textTheme.headline5!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }

  String formatTextLength(String value) {
    return value.length < 2 ? '0$value' : value;
  }
}


