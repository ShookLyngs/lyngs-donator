import '../../main.dart';
import 'app_bar.dart';
import 'full_balls_list.dart';
import 'followed_list.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            GenerateAppBar(),
            GenerateFullBallsList(),
            GenerateFollowedList(),
          ],
        ),
      ],
    );
    /*return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        GenerateAppBar(),
        GenerateFullBallsList(),
      ],
    );*/
  }
}
