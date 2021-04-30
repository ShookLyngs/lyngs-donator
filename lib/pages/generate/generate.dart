import 'dart:math';

import 'package:lyngs_donator/app.dart';
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
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              GenerateAppBar(),
              GenerateFullBallsList(),
              GenerateFollowedList(),
            ],
          ),
          Obx(() => Positioned(
            width: Get.width,
            bottom: calculatePosition(
              minHeight,
              maxHeight,
              state.panelPosition.value,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Opacity(
                opacity: calculateOpacity(state.panelPosition.value),
                child: Center(child: GenerateFooter())
              ),
            ),
          )),
        ],
      ),
      collapsed: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(16)
          ),
        ),
        child: const Center(child: Text('------')),
      ),
      panelBuilder: (scrollController) {
        return Stack(
          children: [
            ListView(
              controller: scrollController,
              children: [
                const SizedBox(height: 80),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
                const ListTile(
                  title: Text('ListTile Title'),
                  subtitle: Text('ListTile SubTitle'),
                ),
              ],
            ),
            Positioned(
              top: 0,
              width: Get.width,
              child: SizedBox(
                height: 80,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16)
                    ),
                  ),
                  child: Row(children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(children: [
                        const Icon(Icons.arrow_back),
                        const SizedBox(width: 10),
                        const Text('Title',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          )
                        ),
                      ]),
                    )
                  ]),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  double calculatePosition(double min, double max, double position) {
    return (max - min) * position + min;
  }
  double calculateOpacity(double position) {
    return max(1 - (2 * position), 0);
  }
}
