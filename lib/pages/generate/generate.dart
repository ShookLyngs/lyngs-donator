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
          headerSliverBuilder: (_, __) => [],
          body: PageView(
            controller: controller,
            scrollDirection: Axis.vertical,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              CustomScrollView(slivers: [
                // AppBar
                GenerateAppBar(),
                // List when show all balls
                GenerateFullBallsList(),
                GenerateFullBallsList(),
              ]),
              // GenerateFullBallsList(),
              const Center(
                child: Text('Second Page'),
              ),
            ],
          ),
        ),
        /*Positioned(
          bottom: 0,
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(child: GenerateFooter()),
          ),
        ),*/
      ],
    );
  }
}
