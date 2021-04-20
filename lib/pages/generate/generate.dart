import '../../main.dart';
import 'app_bar.dart';
import 'full_balls_list.dart';

class GeneratePage extends StatelessWidget {
  const GeneratePage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            GenerateAppBar(),
            GenerateFullBallsList(),
          ],
        ),
      ],
    );
  }
}
