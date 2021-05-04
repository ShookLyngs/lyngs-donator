
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../../main.dart';
import 'generate_state.dart';
import 'panel/body.dart';
import 'panel/header.dart';

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


