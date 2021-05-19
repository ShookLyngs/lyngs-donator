import '../../main.dart';
import 'list_section.dart';
import 'radius_card.dart';

class HistoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListSection(
      title: '开奖记录',
      children: [
        HistoryListItem(),
        HistoryListItem(),
      ],
    );
  }
}

class HistoryListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RadiusCard(
      child: Column(children: [
        const Text('21049'),
      ]),
    );
  }
}

