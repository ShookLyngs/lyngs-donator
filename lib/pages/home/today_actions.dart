import '../../main.dart';
import 'widgets/radius_card.dart';

class TodayActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          RadiusCard(
            outerPadding: const EdgeInsets.all(0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '5月18日',
                          style: Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '周二',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.caption!.color,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Dot(),
                        const SizedBox(width: 8),
                        const Text('即将开奖'),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4)),
                          ),
                          child: Text(
                            '#21049',
                            style: TextStyle(
                              color: Theme.of(context).textTheme.bodyText1!.color,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text('ROLL ONE'),
                ),
              ],
            ),
          ),
          RadiusCard(
            outerPadding: const EdgeInsets.symmetric(horizontal: 24),
            outerBorderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
            child: Row(children: [
              const Text('11'),
            ]),
          ),
        ],
      ),
    );
  }
}
