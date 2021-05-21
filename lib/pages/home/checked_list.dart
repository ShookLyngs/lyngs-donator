import '../../main.dart';
import 'list_section.dart';
import 'radius_card.dart';

class CheckedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListSection(
      title: '已开奖',
      direction: ListSectionDirection.row,
      children: [
        Expanded(
          child: SizedBox(
            height: 60,
            child: ListView.separated(
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
      child: Row(
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
    );
  }
}

