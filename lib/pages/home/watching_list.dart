import '../../main.dart';

class WatchingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '关注中',
            style: Theme.of(context).textTheme.headline5!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          WatchingListItem(),
          const Divider(),
          WatchingListItem(),
          const Divider(),
          WatchingListItem(),
        ],
      ),
    );
  }
}

class WatchingListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Ink(
          color: Theme.of(context).cardColor,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(children: [
                          Text(
                            '#21051',
                            style: Theme.of(context).textTheme.headline5!.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
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
                    ],
                  ),

                  const SizedBox(height: 2),

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

                              WatchingListNumber('/'),

                              WatchingListNumber('12'),
                              WatchingListNumber('12'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '4倍 / 8CNY',
                        style: TextStyle(
                          color: Theme.of(context).primaryColorDark,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
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
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    ));
  }
}


