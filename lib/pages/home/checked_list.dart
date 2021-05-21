import '../../main.dart';
import 'list_section.dart';
import 'radius_card.dart';

class CheckedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListSection(
      title: '已开奖',
      contentPadding: const EdgeInsets.all(0),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: RadiusCard(
            onTap: () {},
            innerPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 24,
            ),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '380/1,965',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Theme.of(context).primaryColorDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text('本月收入/支出'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('统计'),
                    const SizedBox(width: 2),
                    const Icon(
                      Icons.chevron_right,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 6),

        SizedBox(
          height: 90,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (_context, index) {
              return CheckedListItem();
            },
            separatorBuilder: (_context, _index) {
              return const SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }
}

class CheckedListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RadiusCard(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                '#21049',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            '+8',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green[600],
            ),
          ),
        ],
      ),
    );
  }
}

