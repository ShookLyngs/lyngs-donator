import 'dart:math';

import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../main.dart';
import 'generate_body.dart';
import 'generate_panel.dart';
import 'generate_panel_collapsed.dart';
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
    var minHeight = state.panelMinHeight;

    return SlidingUpPanel(
      // Configurations
      maxHeight: maxHeight,
      minHeight: minHeight,
      backdropEnabled: true,
      backdropOpacity: 0.3,
      boxShadow: const [
        BoxShadow(
          blurRadius: 30.0,
          color: Color.fromRGBO(0, 0, 0, 0.10),
        ),
      ],
      borderRadius: state.wrapBorderRadius,
      controller: state.panelController,
      // Widgets
      body: GenerateBody(),
      collapsed: GeneratePanelCollapsed(),
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
  // * This result fits the `bottom` param in Positioned widget.
  double calculateBottomPosition(double min, double max, double position) {
    return (max - min) * position + min;
  }

  // Use this to make your widget Fade out two times faster,
  // based on move percentage of panel.
  double calculateFasterOpacity(double position) {
    return max(1 - (2 * position), 0);
  }
}
