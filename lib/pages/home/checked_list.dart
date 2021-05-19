import '../../main.dart';
import 'list_section.dart';
import 'radius_card.dart';

class CheckedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListSection(
      title: '已兑奖',
      direction: ListSectionDirection.row,
      children: [
        Expanded(
          child: Wrap(
            spacing: 8,
            children: [
              CheckedListItem(),
              CheckedListItem(),
              CheckedListItem(),
              CheckedListItem(),
              CheckedListItem(),
              CheckedListItem(),
            ],
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

          /*const SizedBox(width: 8),
          const Text(
            '-8',
            style: TextStyle(
              fontSize: 20,
            ),
          )*/

          /*const Spacer(),
          const Text(
            '-8 CNY',
            style: TextStyle(
              fontSize: 20,
            ),
          ),*/
        ],
      ),
    );
  }
}

