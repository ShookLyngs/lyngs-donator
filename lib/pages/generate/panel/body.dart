import '../../../main.dart';
import '../generate_state.dart';
import 'recent_status.dart';

class PanelBody extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate([

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