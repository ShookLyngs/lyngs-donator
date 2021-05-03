import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../../main.dart';
import 'generate_state.dart';

class GeneratePanel extends GetxWidget<GeneratePageState> {
  final ScrollController scrollController;

  GeneratePanel({
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: state.wrapBorderRadius,
      child: Container(
        color: Theme.of(context).cardColor,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverStickyHeader(
              header: Container(
                height: 80,
                child: TextButton(
                  onPressed: () {  },
                  child: const Text('我的关注'),
                ),
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
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
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
