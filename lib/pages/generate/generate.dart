import 'dart:math';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../main.dart';
import 'generate_body.dart';
import 'generate_collapsed.dart';
import 'generate_panel.dart';
import 'generate_state.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    // Lazy provide the page state keeper.
    Get.lazyPut(() => GeneratePageState());
    var state = Get.find<GeneratePageState>();

    // Heights
    var statusBarHeight = Get.statusBarHeight / Get.pixelRatio;
    var maxHeight = Get.height - statusBarHeight;
    var minHeight = kToolbarHeight + statusBarHeight;

    return SlidingUpPanel(
      // Configurations
      maxHeight: maxHeight,
      minHeight: minHeight,
      backdropEnabled: true,
      backdropOpacity: 0.3,
      borderRadius: state.wrapBorderRadius,
      // Widgets
      body: GenerateBody(),
      collapsed: GenerateCollapsed(),
      panelBuilder: (scrollController) => GeneratePanel(
        scrollController: scrollController,
      ),
      // Events
      onPanelSlide: (position) {
        state.panelPosition.value = position;
      },
    );
  }

  // If any widget needs to stick with panel's position,
  // use this function to make any positioned widget follow the panel.
  // * This suits the `bottom` property in Positioned widget.
  double calculatePosition(double min, double max, double position) {
    return (max - min) * position + min;
  }

  // Use this to make your widget Fade out two times faster,
  // based on move percentage of panel.
  double calculateOpacity(double position) {
    return max(1 - (2 * position), 0);
  }
}
