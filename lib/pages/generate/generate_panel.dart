import 'dart:ui';

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
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverStickyHeader(
              header: PanelHeader(),
              sliver: PanelBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class PanelHeader extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor.withAlpha(160),
            ),
            child: Row(
              children: [
                const SizedBox(width: 16),
                TextButton(
                  onPressed: () {
                    state.panelController.close();
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(state.innerBorderRadius),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.expand_more,
                        size: 32,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '我的关注',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 12),
                    ],
                  ),
                ),

                const SizedBox(width: 16),
              ],
            ),
          ),
      ),
    );
  }
}

class PanelBody extends GetxWidget<GeneratePageState> {
  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate([
      Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.all(state.innerBorderRadius),
          ),
          child: const Center(child: Text('card')),
        ),
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
      const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      ),
    ]));
  }
}


