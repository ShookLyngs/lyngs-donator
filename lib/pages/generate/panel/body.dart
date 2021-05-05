import 'package:lyngs_donator/pages/generate/panel/watch_list.dart';

import '../../../main.dart';
import '../generate_state.dart';
import 'recent_status.dart';
import 'watch_list.dart';

class PanelBody extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate([
      // Watch list
      PanelWatchList(),

      const SizedBox(height: 16),

      // Status card title
      PanelRecentStatus(),

      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
    ]));
  }
}