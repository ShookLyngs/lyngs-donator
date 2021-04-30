import 'package:lyngs_donator/pages/generate/page_state.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../main.dart';
import 'app_bar.dart';
import 'followed_app_bar.dart';
import 'followed_list.dart';
import 'footer.dart';
import 'full_balls_list.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => GeneratePageState());
    var state = Get.find<GeneratePageState>();

    var statusBarHeight = Get.statusBarHeight / Get.pixelRatio;
    var maxHeight = Get.height - statusBarHeight;
    var minHeight = kToolbarHeight + statusBarHeight;

    return SlidingUpPanel(
      onPanelSlide: (position) {
        state.panelPosition.value = position;
      },
      maxHeight: maxHeight,
      minHeight: minHeight,
      backdropEnabled: true,
      backdropOpacity: 0.3,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      ),
      collapsed: Row(
        children: [
          TextButton(onPressed: () {}, child: const Text('Add'))
        ],
      ),
      panel: const Center(
        child: Text('This is the sliding Widget'),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          GenerateAppBar(),
          GenerateFullBallsList(),
          GenerateFollowedList(),
        ],
      ),
    );
  }
}
