import '../../main.dart';
import 'widgets/list_section.dart';
import 'widgets/radius_card.dart';

class WatchingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListSection(
      title: '关注中',
      children: [
        WatchingListItem(),
        WatchingListItem(),
        WatchingListItem(),
      ],
    );
  }
}

class WatchingListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RadiusCard(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Expanded(
              child: Row(children: [
                Ink(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: context.theme.canvasColor,
                    borderRadius:
                    const BorderRadius.all(Radius.circular(4)),
                  ),
                  child: Row(
                    children: [
                      Text(
                        '#',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: context.theme.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        '21051',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                          // fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            Icon(
              Icons.watch_later_outlined,
              size: 16,
              color: Theme.of(context).textTheme.caption!.color,
            ),
            const SizedBox(width: 4),
            const Text('5月19日 周三'),
          ]),

          const SizedBox(height: 6),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: 24,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      WatchingListNumber('12'),
                      WatchingListNumber('12'),
                      WatchingListNumber('12'),
                      WatchingListNumber('12'),
                      WatchingListNumber('12'),

                      WatchingListNumber('+'),

                      WatchingListNumber('12'),
                      WatchingListNumber('12'),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Dot(size: 8),
              const SizedBox(width: 8),
              Text(
                '4倍 / 8CNY',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WatchingListNumber extends StatelessWidget {
  final String text;

  WatchingListNumber(this.text);

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.5),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    ));
  }
}


