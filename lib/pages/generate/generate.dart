import '../../main.dart';
import 'app_bar.dart';
import 'followed_app_bar.dart';
import 'followed_list.dart';
import 'full_balls_list.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    // ignore: lines_longer_than_80_chars
    print(kToolbarHeight+ Get.statusBarHeight);

    return Container(
      child: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              GenerateAppBar(),
              GenerateFullBallsList(),
              GenerateFollowedList(),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 132.4 / Get.height,
            minChildSize: 132.4 / Get.height,
            maxChildSize: 1,
            builder: (_context, scrollController) {
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
            },
          ),
        ],
      ),
    );
  }
}
