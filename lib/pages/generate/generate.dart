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
    var windowHeight = Get.height;
    var statusBarHeight = Get.statusBarHeight / Get.pixelRatio;
    var minHeight = (kToolbarHeight + statusBarHeight) / Get.height;

    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            GenerateAppBar(),
            GenerateFullBallsList(),
            GenerateFollowedList(),
          ],
        ),
        Container(
          height: windowHeight,
          child: DraggableScrollableSheet(
            initialChildSize: minHeight,
            minChildSize: minHeight,
            maxChildSize: 1,
            builder: (_context, scrollController) {
              return LayoutBuilder(builder: (_boxContext, _boxConstraints) {
                return Container(
                  color: Colors.white,
                  child: CustomScrollView(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      FollowedAppBar(),
                      GenerateFullBallsList(),
                      GenerateFollowedList(),
                    ],
                  ),
                );
              });
            },
          ),
        ),
      ],
    );
  }
}
