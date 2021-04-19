import '../../main.dart';
import 'app_bar.dart';
import 'footer.dart';
import 'full_balls_list.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(slivers: [
          // AppBar
          GenerateAppBar(),
          // List when show all balls
          GenerateFullBallsList(),
        ]),
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
