import '../../main.dart';
import 'app_bar.dart';
import 'footer.dart';
import 'full_balls_list.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    return Stack(
      children: [
        NestedScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          headerSliverBuilder: (_, __) => [
            GenerateAppBar(),
          ],
          body: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              GenerateFullBallsList(),
              const Center(
                child: Text('Second Page'),
              ),
              const Center(
                child: Text('Third Page'),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(child: GenerateFooter()),
          ),
        ),
      ],
    );
  }
}
